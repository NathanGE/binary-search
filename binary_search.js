// Binary search on a sorted array.
'use strict'

// return the array index that
// the target value resides in or -1
function binarySearch(array, target){
  let min = 0;
  let max = array.length - 1;
  while(max >= min){
    let guess = Math.floor( (max + min) / 2 );
    if(array[guess] === target) {
      return guess;
    } else if(array[guess] < target) {
      min = guess + 1;
    } else {
      max = guess - 1;
    }
  }
  return -1;
}

console.log(binarySearch([1, 3, 5, 6, 12, 14], 6));
