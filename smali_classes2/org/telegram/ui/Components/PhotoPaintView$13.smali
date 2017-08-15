.class Lorg/telegram/ui/Components/PhotoPaintView$13;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoPaintView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoPaintView;->setColorPickerVisibilityFade(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PhotoPaintView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PhotoPaintView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoPaintView$13;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$13;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    # getter for: Lorg/telegram/ui/Components/PhotoPaintView;->colorPickerAnimator:Landroid/animation/Animator;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoPaintView;->access$1500(Lorg/telegram/ui/Components/PhotoPaintView;)Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$13;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/Components/PhotoPaintView;->colorPickerAnimator:Landroid/animation/Animator;
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoPaintView;->access$1502(Lorg/telegram/ui/Components/PhotoPaintView;Landroid/animation/Animator;)Landroid/animation/Animator;

    :cond_0
    return-void
.end method
