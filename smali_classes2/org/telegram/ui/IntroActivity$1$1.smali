.class Lorg/telegram/ui/IntroActivity$1$1;
.super Ljava/lang/Object;
.source "IntroActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/IntroActivity$1;->onPageScrollStateChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/IntroActivity$1;

.field final synthetic val$fadeoutImage:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/IntroActivity$1;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/IntroActivity$1$1;->this$1:Lorg/telegram/ui/IntroActivity$1;

    iput-object p2, p0, Lorg/telegram/ui/IntroActivity$1$1;->val$fadeoutImage:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/IntroActivity$1$1;->val$fadeoutImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
