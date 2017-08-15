.class public Lorg/telegram/ui/Components/GroupCreateDividerItemDecoration;
.super Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;
.source "GroupCreateDividerItemDecoration.java"


# instance fields
.field private searching:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$State;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$State;)V

    invoke-virtual {p3, p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/GroupCreateDividerItemDecoration;->searching:Z

    if-nez v1, :cond_1

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput v2, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$State;)V
    .locals 11

    const/4 v6, 0x0

    const/high16 v10, 0x42900000    # 72.0f

    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->getWidth()I

    move-result v8

    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildCount()I

    move-result v9

    move v7, v6

    :goto_0
    add-int/lit8 v0, v9, -0x1

    if-ge v7, v0, :cond_3

    invoke-virtual {p2, v7}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    :goto_1
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_2
    int-to-float v2, v4

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_2

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    :goto_3
    sub-int v0, v8, v0

    int-to-float v3, v0

    int-to-float v4, v4

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v1, v0

    goto :goto_2

    :cond_2
    move v0, v6

    goto :goto_3

    :cond_3
    return-void
.end method

.method public setSearching(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/GroupCreateDividerItemDecoration;->searching:Z

    return-void
.end method
