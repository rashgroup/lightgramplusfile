.class Lorg/telegram/messenger/support/widget/DefaultItemAnimator$6;
.super Lorg/telegram/messenger/support/widget/DefaultItemAnimator$VpaListenerAdapter;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/support/widget/DefaultItemAnimator;->animateMoveImpl(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/support/widget/DefaultItemAnimator;

.field final synthetic val$animation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field final synthetic val$deltaX:I

.field final synthetic val$deltaY:I

.field final synthetic val$holder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/widget/DefaultItemAnimator;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;IILandroid/support/v4/view/ViewPropertyAnimatorCompat;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$6;->this$0:Lorg/telegram/messenger/support/widget/DefaultItemAnimator;

    iput-object p2, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$6;->val$holder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    iput p3, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$6;->val$deltaX:I

    iput p4, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$6;->val$deltaY:I

    iput-object p5, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$6;->val$animation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$VpaListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$6;->val$deltaX:I

    if-eqz v0, :cond_0

    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    :cond_0
    iget v0, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$6;->val$deltaY:I

    if-eqz v0, :cond_1

    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$6;->val$animation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$6;->this$0:Lorg/telegram/messenger/support/widget/DefaultItemAnimator;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$6;->val$holder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/DefaultItemAnimator;->dispatchMoveFinished(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$6;->this$0:Lorg/telegram/messenger/support/widget/DefaultItemAnimator;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$6;->val$holder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$6;->this$0:Lorg/telegram/messenger/support/widget/DefaultItemAnimator;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$6;->this$0:Lorg/telegram/messenger/support/widget/DefaultItemAnimator;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$6;->val$holder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/DefaultItemAnimator;->dispatchMoveStarting(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
