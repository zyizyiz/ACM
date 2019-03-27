struct ListNode
{
	int m_nKey;
	ListNode* m_pNext;
}

// 解法1
void PrintListReversingLy_Iteratively(ListNode* pHead)
{
	std::stack<ListNode*> nodes;

	ListNode* pNode = pHead;
	while(pNode != nullptr)
	{
		nodes.push(pNode);
		pNode = pNode->m_pNext;
	}

	while(!nodes.empty())
	{
		pNode = nodes.top();
		printf("(%d)\t", pNode->m_nKey);
		nodes.pop();
	}
}

// 解法2
void PrintListReversingLy_Iteratively(ListNode* pHead)
{
	if (pHead != nullptr)
	{
		if (pHead->m_pNext != nullptr)
		{
			PrintListReversingLy_Iteratively(pHead->m_pNext);
		}
		printf("(%d)\t", pNode->m_nKey);
	}
}