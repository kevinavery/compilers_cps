


def length(arr):
    len = 0
    for i in arr:
        len += 1
    return len

def swap(arr, i1, i2):   
    arr[i2] ^= arr[i1]
    arr[i1] ^= arr[i2]
    arr[i2] ^= arr[i1]

def insertionSort(arr):
  i = 1
  while i < length(arr):
    j = i - 1
    k = i
    while j >= 0:
      if arr[k] < arr[j]:
        swap(arr, k, j)
      k = j
      j -= 1
    i += 1

myarray = [83, 57, 3, 70, 42, 27, 15, 97, 88, 42]
insertionSort(myarray)
print(myarray)
   

