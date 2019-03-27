void SortAges(int ages[], int length)
{
	if (ages == nullptr || length <= 0)
	{
		return
	}
	const int oldestAge = 99;
	int timesOfAge[oldestAge + 1];

	for (int i = 0; i <= oldestAge; ++i)
	{
		timesOfAge[i] = 0;
	}

	for (int i = 0; i < length; ++i)
	{
		int age = ages[i];
		if (age < 0 || age > oldestAge)
		{
			throw new std::exception("age out of range");
		}
		++timesOfAge[age];
	}

	int index = 0;
	for (int i = 0; i <= oldestAge; ++i)
	{
		for (int j = 0; j < timesOfAge[i]; ++j)
		{
			ages[index] = i;
			++index;
		}
	}
}