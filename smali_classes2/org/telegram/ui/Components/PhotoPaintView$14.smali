.class Lorg/telegram/ui/Components/PhotoPaintView$14;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoPaintView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoPaintView;->setDimVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PhotoPaintView;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PhotoPaintView;Z)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoPaintView$14;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/PhotoPaintView$14;->val$visible:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$14;->val$visible:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$14;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    # getter for: Lorg/telegram/ui/Components/PhotoPaintView;->dimView:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoPaintView;->access$1600(Lorg/telegram/ui/Components/PhotoPaintView;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method
