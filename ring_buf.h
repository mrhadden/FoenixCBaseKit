#ifndef RING_BUF_H
#define RING_BUF_H

#include <stdbool.h>

// maximum buffer size
#define RBUF_SIZE 8

// buffer structure
typedef struct ring_buf_s
{
  unsigned char buf[RBUF_SIZE];
  int head;         // new data is written at this position in the buffer
  int tail;         // data is read from this position in the buffer
  int count;        // total number of elements in the queue <= RBUF_SIZE
} rbuf_t;

// ring buffer options
typedef enum
{
  RBUF_CLEAR,
  RBUF_NO_CLEAR
} rbuf_opt_e;

// buffer messages
typedef enum
{
  RBUF_EMPTY = -1,
  RBUF_FULL
} rbuf_msg_e;

// API

  // initialise the queue
  void ringbuf_init(rbuf_t* _this);

  // determine if the queue is empty
  bool ringbuf_empty(rbuf_t* _this);

  // determine if the queue is full
  bool ringbuf_full(rbuf_t* _this);

  // fetch a byte from the queue at tail
  int ringbuf_get(rbuf_t* _this);

  // insert a byte to the queue at head
  void ringbuf_put(rbuf_t* _this, const unsigned char item);

  // peek at the first element in the queue
  int ringbuf_peek(rbuf_t* _this);

  // flush the queue and clear the buffer
  void ringbuf_flush(rbuf_t* _this, rbuf_opt_e clear);

  // print the contents
  void ringbuf_print(rbuf_t* _this);

  // advance the ring buffer index
  static unsigned int ringbuf_adv (const unsigned int value, const unsigned int max_val);

#endif