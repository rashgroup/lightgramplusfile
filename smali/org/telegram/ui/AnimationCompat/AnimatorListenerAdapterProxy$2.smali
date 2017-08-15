.class Lorg/telegram/ui/AnimationCompat/AnimatorListenerAdapterProxy$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimatorListenerAdapterProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/AnimationCompat/AnimatorListenerAdapterProxy;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/AnimationCompat/AnimatorListenerAdapterProxy;


# direct methods
.method constructor <init>(Lorg/telegram/ui/AnimationCompat/AnimatorListenerAdapterProxy;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/AnimationCompat/AnimatorListenerAdapterProxy$2;->this$0:Lorg/telegram/ui/AnimationCompat/AnimatorListenerAdapterProxy;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/AnimationCompat/AnimatorListenerAdapterProxy$2;->this$0:Lorg/telegram/ui/AnimationCompat/AnimatorListenerAdapterProxy;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/AnimationCompat/AnimatorListenerAdapterProxy;->onAnimationCancel(Ljava/lang/Object;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/AnimationCompat/AnimatorListenerAdapterProxy$2;->this$0:Lorg/telegram/ui/AnimationCompat/AnimatorListenerAdapterProxy;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/AnimationCompat/AnimatorListenerAdapterProxy;->onAnimationEnd(Ljava/lang/Object;)V

    return-void
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/AnimationCompat/AnimatorListenerAdapterProxy$2;->this$0:Lorg/telegram/ui/AnimationCompat/AnimatorListenerAdapterProxy;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/AnimationCompat/AnimatorListenerAdapterProxy;->onAnimationPause(Ljava/lang/Object;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/AnimationCompat/AnimatorListenerAdapterProxy$2;->this$0:Lorg/telegram/ui/AnimationCompat/AnimatorListenerAdapterProxy;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/AnimationCompat/AnimatorListenerAdapterProxy;->onAnimationRepeat(Ljava/lang/Object;)V

    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/AnimationCompat/AnimatorListenerAdapterProxy$2;->this$0:Lorg/telegram/ui/AnimationCompat/AnimatorListenerAdapterProxy;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/AnimationCompat/AnimatorListenerAdapterProxy;->onAnimationResume(Ljava/lang/Object;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/AnimationCompat/AnimatorListenerAdapterProxy$2;->this$0:Lorg/telegram/ui/AnimationCompat/AnimatorListenerAdapterProxy;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/AnimationCompat/AnimatorListenerAdapterProxy;->onAnimationStart(Ljava/lang/Object;)V

    return-void
.end method
