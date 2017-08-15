.class Lorg/telegram/ui/PhotoViewer$48$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$48;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoViewer$48;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer$48;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$48$1;->this$1:Lorg/telegram/ui/PhotoViewer$48;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$48$1;->this$1:Lorg/telegram/ui/PhotoViewer$48;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$48;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$10700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoPaintView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoPaintView;->init()V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$48$1;->this$1:Lorg/telegram/ui/PhotoViewer$48;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$48;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$10802(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$48$1;->this$1:Lorg/telegram/ui/PhotoViewer$48;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$48;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$48$1;->this$1:Lorg/telegram/ui/PhotoViewer$48;

    iget v1, v1, Lorg/telegram/ui/PhotoViewer$48;->val$mode:I

    # setter for: Lorg/telegram/ui/PhotoViewer;->currentEditMode:I
    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$9002(Lorg/telegram/ui/PhotoViewer;I)I

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$48$1;->this$1:Lorg/telegram/ui/PhotoViewer$48;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$48;->this$0:Lorg/telegram/ui/PhotoViewer;

    # setter for: Lorg/telegram/ui/PhotoViewer;->animateToScale:F
    invoke-static {v0, v3}, Lorg/telegram/ui/PhotoViewer;->access$11002(Lorg/telegram/ui/PhotoViewer;F)F

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$48$1;->this$1:Lorg/telegram/ui/PhotoViewer$48;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$48;->this$0:Lorg/telegram/ui/PhotoViewer;

    # setter for: Lorg/telegram/ui/PhotoViewer;->animateToX:F
    invoke-static {v0, v2}, Lorg/telegram/ui/PhotoViewer;->access$11102(Lorg/telegram/ui/PhotoViewer;F)F

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$48$1;->this$1:Lorg/telegram/ui/PhotoViewer$48;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$48;->this$0:Lorg/telegram/ui/PhotoViewer;

    # setter for: Lorg/telegram/ui/PhotoViewer;->animateToY:F
    invoke-static {v0, v2}, Lorg/telegram/ui/PhotoViewer;->access$11202(Lorg/telegram/ui/PhotoViewer;F)F

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$48$1;->this$1:Lorg/telegram/ui/PhotoViewer$48;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$48;->this$0:Lorg/telegram/ui/PhotoViewer;

    # setter for: Lorg/telegram/ui/PhotoViewer;->scale:F
    invoke-static {v0, v3}, Lorg/telegram/ui/PhotoViewer;->access$3602(Lorg/telegram/ui/PhotoViewer;F)F

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$48$1;->this$1:Lorg/telegram/ui/PhotoViewer$48;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$48;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$48$1;->this$1:Lorg/telegram/ui/PhotoViewer$48;

    iget-object v1, v1, Lorg/telegram/ui/PhotoViewer$48;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->scale:F
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$3600(Lorg/telegram/ui/PhotoViewer;)F

    move-result v1

    # invokes: Lorg/telegram/ui/PhotoViewer;->updateMinMax(F)V
    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$3900(Lorg/telegram/ui/PhotoViewer;F)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$48$1;->this$1:Lorg/telegram/ui/PhotoViewer$48;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$48;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$3300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->invalidate()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
