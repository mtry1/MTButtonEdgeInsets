# MTButtonEdgeInsets

typedef struct UIEdgeInsets {
    CGFloat top, left, bottom, right;  // specify amount to inset (positive) for each of the edges. values can be negative to 'outset'
} UIEdgeInsets;
主要是关于UIEdgeInsets的理解，如果需要右移offset个点，那么left+offset, right-offset，左边增加offset点的偏移后，right自然减少了offset个点
