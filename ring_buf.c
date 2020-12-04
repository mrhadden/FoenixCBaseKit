#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "ring_buf.h"

/* Ring bufffer / Circular buffer / Circular Queue implementation
 * The queue grows from the head and shrinks from the tail
 */

/*
int main(int argc, char const *argv[])
{
  // buffer structure
  rbuf_t buffer;

  // init buffer
  ringbuf_init(&buffer);

  // pulling from an empty buffer will not work
  int elem = ringbuf_get(&buffer);
  printf("buffer is %s\n", RBUF_EMPTY ==  elem ? "empty" : "not empty");

  // fill up the buffer
  for (int i = 0; i < RBUF_SIZE; ++i)
  {
    ringbuf_put(&buffer, i);
  }

  // show buffer
  ringbuf_print(&buffer);
  printf("first elem to go out: %d\n", ringbuf_peek(&buffer));

  // buffer is full, trying to insert will not work
  ringbuf_put(&buffer, 42);

  // however if we delete some from the buffer
  (void)ringbuf_get(&buffer);

  // we can insert again
  ringbuf_put(&buffer, 42);
  ringbuf_print(&buffer);

  // we can reset buffer counts or clear the contents completely
  ringbuf_flush(&buffer, RBUF_CLEAR);

  return EXIT_SUCCESS;
}
*/

void ringbuf_init(rbuf_t* _this)
{
  // clear the _thisfer and init the values
  // and sets head = tail in one go
  memset( _this, 0, sizeof(*_this) );
}

bool ringbuf_empty(rbuf_t* _this)
{
  // test if the queue is empty
  // 0 returns true
  // nonzero false
  return (0 == _this->count);
}

bool ringbuf_full(rbuf_t* _this)
{
  // full when no of elements exceed the max size
  return (_this->count >= RBUF_SIZE);
}

int ringbuf_get(rbuf_t* _this)
{
  int item;
  if (_this->count > 0)
  {
    // get item element
    item        = _this->buf[_this->tail];
    // advance the tail
    _this->tail = ringbuf_adv(_this->tail, RBUF_SIZE);
    // reduce the total count
    --_this->count;
  }
  else {
    // the queue is empty
    item = RBUF_EMPTY;
  }
  return item;
}

void ringbuf_put(rbuf_t* _this, const unsigned char item)
{
  if (_this->count < RBUF_SIZE)
  {
    // set the item at head position
    _this->buf[_this->head] = item;
    // advance the head
    _this->head = ringbuf_adv(_this->head, RBUF_SIZE);
    // increase the total count
    ++_this->count;
  }
}

int ringbuf_peek(rbuf_t* _this)
{
  if (_this->count != 0)
  {
    return _this->buf[_this->tail];
  }
}

void ringbuf_print(rbuf_t* _this)
{
  for (int i = 0; i < RBUF_SIZE; i++)
  {
    printf("%d ", _this->buf[i]);
  }
  printf("\n");
}

void ringbuf_flush(rbuf_t* _this, rbuf_opt_e clear)
{
  _this->count = 0;
  _this->head  = 0;
  _this->tail  = 0;

  // optionally clear
  if (RBUF_CLEAR == clear)
  {
    memset(_this->buf, 0, sizeof(_this->buf));
  }
}

static unsigned int ringbuf_adv(const unsigned int value, const unsigned int max)
{
  unsigned int index = value + 1;
  if (index >= max)
  {
    index = 0;
  }
  return index;
}
