.class Lorg/telegram/messenger/support/widget/DefaultItemAnimator$7;
.super Lorg/telegram/messenger/support/widget/DefaultItemAnimator$VpaListenerAdapter;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/support/widget/DefaultItemAnimator;->animateChangeImpl(Lorg/telegram/messenger/support/widget/DefaultItemAnimator$ChangeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/support/widget/DefaultItemAnimator;

.field final synthetic val$changeInfo:Lorg/telegram/messenger/support/widget/DefaultItemAnimator$ChangeInfo;

.field final synthetic val$oldViewAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/widget/DefaultItemAnimator;Lorg/telegram/messenger/support/widget/DefaultItemAnimator$ChangeInfo;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$7;->this$0:Lorg/telegram/messenger/support/widget/DefaultItemAnimator;

    iput-object p2, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$7;->val$changeInfo:Lorg/telegram/messenger/support/widget/DefaultItemAnimator$ChangeInfo;

    iput-object p3, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$7;->val$oldViewAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$VpaListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$7;->val$oldViewAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    invoke-static {p1, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    invoke-static {p1, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$7;->this$0:Lorg/telegram/messenger/support/widget/DefaultItemAnimator;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$7;->val$changeInfo:Lorg/telegram/messenger/support/widget/DefaultItemAnimator$ChangeInfo;

    iget-object v1, v1, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/support/widget/DefaultItemAnimator;->dispatchChangeFinished(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Z)V

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$7;->this$0:Lorg/telegram/messenger/support/widget/DefaultItemAnimator;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$7;->val$changeInfo:Lorg/telegram/messenger/support/widget/DefaultItemAnimator$ChangeInfo;

    iget-object v1, v1, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$7;->this$0:Lorg/telegram/messenger/support/widget/DefaultItemAnimator;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$7;->this$0:Lorg/telegram/messenger/support/widget/DefaultItemAnimator;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$7;->val$changeInfo:Lorg/telegram/messenger/support/widget/DefaultItemAnimator$ChangeInfo;

    iget-object v1, v1, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/support/widget/DefaultItemAnimator;->dispatchChangeStarting(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Z)V

    return-void
.end method
