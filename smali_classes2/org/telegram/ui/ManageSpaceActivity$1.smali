.class Lorg/telegram/ui/ManageSpaceActivity$1;
.super Ljava/lang/Object;
.source "ManageSpaceActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ManageSpaceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ManageSpaceActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ManageSpaceActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ManageSpaceActivity$1;->this$0:Lorg/telegram/ui/ManageSpaceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/ui/ManageSpaceActivity$1;->this$0:Lorg/telegram/ui/ManageSpaceActivity;

    # getter for: Lorg/telegram/ui/ManageSpaceActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v0}, Lorg/telegram/ui/ManageSpaceActivity;->access$000(Lorg/telegram/ui/ManageSpaceActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const/4 v4, 0x2

    new-array v4, v4, [I

    iget-object v5, p0, Lorg/telegram/ui/ManageSpaceActivity$1;->this$0:Lorg/telegram/ui/ManageSpaceActivity;

    # getter for: Lorg/telegram/ui/ManageSpaceActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v5}, Lorg/telegram/ui/ManageSpaceActivity;->access$100(Lorg/telegram/ui/ManageSpaceActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getLocationOnScreen([I)V

    aget v5, v4, v2

    aget v4, v4, v1

    iget-object v6, p0, Lorg/telegram/ui/ManageSpaceActivity$1;->this$0:Lorg/telegram/ui/ManageSpaceActivity;

    # getter for: Lorg/telegram/ui/ManageSpaceActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v6}, Lorg/telegram/ui/ManageSpaceActivity;->access$100(Lorg/telegram/ui/ManageSpaceActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->checkTransitionAnimation()Z

    move-result v6

    if-nez v6, :cond_0

    int-to-float v6, v5

    cmpl-float v6, v0, v6

    if-lez v6, :cond_1

    iget-object v6, p0, Lorg/telegram/ui/ManageSpaceActivity$1;->this$0:Lorg/telegram/ui/ManageSpaceActivity;

    # getter for: Lorg/telegram/ui/ManageSpaceActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v6}, Lorg/telegram/ui/ManageSpaceActivity;->access$100(Lorg/telegram/ui/ManageSpaceActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    cmpg-float v0, v0, v5

    if-gez v0, :cond_1

    int-to-float v0, v4

    cmpl-float v0, v3, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ManageSpaceActivity$1;->this$0:Lorg/telegram/ui/ManageSpaceActivity;

    # getter for: Lorg/telegram/ui/ManageSpaceActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v0}, Lorg/telegram/ui/ManageSpaceActivity;->access$100(Lorg/telegram/ui/ManageSpaceActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getHeight()I

    move-result v0

    add-int/2addr v0, v4

    int-to-float v0, v0

    cmpg-float v0, v3, v0

    if-gez v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ManageSpaceActivity$1;->this$0:Lorg/telegram/ui/ManageSpaceActivity;

    # getter for: Lorg/telegram/ui/ManageSpaceActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v0}, Lorg/telegram/ui/ManageSpaceActivity;->access$100(Lorg/telegram/ui/ManageSpaceActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/ManageSpaceActivity$1;->this$0:Lorg/telegram/ui/ManageSpaceActivity;

    # getter for: Lorg/telegram/ui/ManageSpaceActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v0}, Lorg/telegram/ui/ManageSpaceActivity;->access$100(Lorg/telegram/ui/ManageSpaceActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ManageSpaceActivity$1;->this$0:Lorg/telegram/ui/ManageSpaceActivity;

    # getter for: Lorg/telegram/ui/ManageSpaceActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v0}, Lorg/telegram/ui/ManageSpaceActivity;->access$100(Lorg/telegram/ui/ManageSpaceActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v3

    iget-object v0, p0, Lorg/telegram/ui/ManageSpaceActivity$1;->this$0:Lorg/telegram/ui/ManageSpaceActivity;

    # getter for: Lorg/telegram/ui/ManageSpaceActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v0}, Lorg/telegram/ui/ManageSpaceActivity;->access$100(Lorg/telegram/ui/ManageSpaceActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ManageSpaceActivity$1;->this$0:Lorg/telegram/ui/ManageSpaceActivity;

    # getter for: Lorg/telegram/ui/ManageSpaceActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v0}, Lorg/telegram/ui/ManageSpaceActivity;->access$100(Lorg/telegram/ui/ManageSpaceActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->closeLastFragment(Z)V

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0
.end method
