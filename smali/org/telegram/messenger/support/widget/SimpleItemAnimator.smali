.class public abstract Lorg/telegram/messenger/support/widget/SimpleItemAnimator;
.super Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;
.source "SimpleItemAnimator.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SimpleItemAnimator"


# instance fields
.field mSupportsChangeAnimations:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/SimpleItemAnimator;->mSupportsChangeAnimations:Z

    return-void
.end method


# virtual methods
.method public abstract animateAdd(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
.end method

.method public animateAppearance(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .locals 6
    .param p1    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p2, :cond_1

    iget v0, p2, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v1, p3, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    if-ne v0, v1, :cond_0

    iget v0, p2, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    iget v1, p3, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget v2, p2, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v3, p2, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    iget v4, p3, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v5, p3, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/support/widget/SimpleItemAnimator;->animateMove(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/SimpleItemAnimator;->animateAdd(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    goto :goto_0
.end method

.method public abstract animateChange(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;IIII)Z
.end method

.method public animateChange(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .locals 7
    .param p1    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget v3, p3, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v4, p3, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v5, p3, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v6, p3, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/support/widget/SimpleItemAnimator;->animateChange(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v0

    return v0

    :cond_0
    iget v5, p4, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v6, p4, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    goto :goto_0
.end method

.method public animateDisappearance(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .locals 7
    .param p1    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget v2, p2, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v3, p2, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-nez p3, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    :goto_0
    if-nez p3, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    :goto_1
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_3

    if-ne v2, v4, :cond_0

    if-eq v3, v5, :cond_3

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v0, v4, v5, v1, v6}, Landroid/view/View;->layout(IIII)V

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/support/widget/SimpleItemAnimator;->animateMove(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v0

    :goto_2
    return v0

    :cond_1
    iget v4, p3, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    goto :goto_0

    :cond_2
    iget v5, p3, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/SimpleItemAnimator;->animateRemove(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    goto :goto_2
.end method

.method public abstract animateMove(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;IIII)Z
.end method

.method public animatePersistence(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .locals 6
    .param p1    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p2, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v1, p3, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    if-ne v0, v1, :cond_0

    iget v0, p2, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    iget v1, p3, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget v2, p2, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v3, p2, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    iget v4, p3, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v5, p3, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/support/widget/SimpleItemAnimator;->animateMove(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/SimpleItemAnimator;->dispatchMoveFinished(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract animateRemove(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
.end method

.method public canReuseUpdatedViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/SimpleItemAnimator;->mSupportsChangeAnimations:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final dispatchAddFinished(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/SimpleItemAnimator;->onAddFinished(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/SimpleItemAnimator;->dispatchAnimationFinished(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public final dispatchAddStarting(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/SimpleItemAnimator;->onAddStarting(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public final dispatchChangeFinished(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/support/widget/SimpleItemAnimator;->onChangeFinished(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Z)V

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/SimpleItemAnimator;->dispatchAnimationFinished(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public final dispatchChangeStarting(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/support/widget/SimpleItemAnimator;->onChangeStarting(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Z)V

    return-void
.end method

.method public final dispatchMoveFinished(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/SimpleItemAnimator;->onMoveFinished(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/SimpleItemAnimator;->dispatchAnimationFinished(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public final dispatchMoveStarting(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/SimpleItemAnimator;->onMoveStarting(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public final dispatchRemoveFinished(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/SimpleItemAnimator;->onRemoveFinished(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/SimpleItemAnimator;->dispatchAnimationFinished(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public final dispatchRemoveStarting(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/SimpleItemAnimator;->onRemoveStarting(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public getSupportsChangeAnimations()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/SimpleItemAnimator;->mSupportsChangeAnimations:Z

    return v0
.end method

.method public onAddFinished(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public onAddStarting(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public onChangeFinished(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Z)V
    .locals 0

    return-void
.end method

.method public onChangeStarting(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Z)V
    .locals 0

    return-void
.end method

.method public onMoveFinished(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public onMoveStarting(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public onRemoveFinished(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public onRemoveStarting(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public setSupportsChangeAnimations(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/messenger/support/widget/SimpleItemAnimator;->mSupportsChangeAnimations:Z

    return-void
.end method
