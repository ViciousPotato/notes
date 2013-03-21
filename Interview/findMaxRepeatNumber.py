def findMaxRepeatNumber(l):
	length = len(l)

	if (len(l) == 0):
		return (0, 0)

	mid = length / 2
	i = mid
	j = mid
	
	currentNumber = l[mid]

	while i >= 0 and l[i] == l[mid]:
		i = i - 1

	i = i + 1

	while j < length and l[j] == l[mid]:
		j = j + 1

	currentRepeatTimes = j - i

	if i == 0 and j == len(l):
		return (l[0], len(l))

	(maxLeftNumber, maxLeftTimes) = findMaxRepeatNumber(l[:i])
	(maxRightNumber, maxRightTimes) = findMaxRepeatNumber(l[j:]) 

	if maxLeftTimes > maxRightTimes and maxLeftTimes > currentRepeatTimes:
		return (maxLeftNumber, maxLeftTimes)

	if maxRightTimes > maxLeftTimes and maxRightTimes > currentRepeatTimes:
		return (maxRightNumber, maxRightTimes)

	return (currentNumber, currentRepeatTimes)

assert findMaxRepeatNumber([1, 1, 1]) == (1, 3)
assert findMaxRepeatNumber([1, 2, 2, 3]) == (2, 2)
assert findMaxRepeatNumber([1, 1, 1, 1, 2, 3]) == (1, 4)
assert findMaxRepeatNumber([1]) == (1, 1)
