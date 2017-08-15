.class Lorg/telegram/ui/AnimationCompat/AnimatorListenerAdapterProxy$1;
.super Lorg/telegram/ui/Animation/AnimatorListenerAdapter10;
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

    iput-object p1, p0, Lorg/telegram/ui/AnimationCompat/AnimatorListenerAdapterProxy$1;->this$0:Lorg/telegram/ui/AnimationCompat/AnimatorListenerAdapterProxy;

    invoke-direct {p0}, Lorg/telegram/ui/Animation/AnimatorListenerAdapter10;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lorg/telegram/ui/Animation/Animator10;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/AnimationCompat/AnimatorListenerAdapterProxy$1;->this$0:Lorg/telegram/ui/AnimationCompat/AnimatorListenerAdapterProxy;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/AnimationCompat/AnimatorListenerAdapterProxy;->onAnimationCancel(Ljava/lang/Object;)V

    return-void
.end method

.method public onAnimationEnd(Lorg/telegram/ui/Animation/Animator10;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/AnimationCompat/AnimatorListenerAdapterProxy$1;->this$0:Lorg/telegram/ui/AnimationCompat/AnimatorListenerAdapterProxy;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/AnimationCompat/AnimatorListenerAdapterProxy;->onAnimationEnd(Ljava/lang/Object;)V

    return-void
.end method

.method public onAnimationPause(Lorg/telegram/ui/Animation/Animator10;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/AnimationCompat/AnimatorListenerAdapterProxy$1;->this$0:Lorg/telegram/ui/AnimationCompat/AnimatorListenerAdapterProxy;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/AnimationCompat/AnimatorListenerAdapterProxy;->onAnimationPause(Ljava/lang/Object;)V

    return-void
.end method

.method public onAnimationRepeat(Lorg/telegram/ui/Animation/Animator10;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/AnimationCompat/AnimatorListenerAdapterProxy$1;->this$0:Lorg/telegram/ui/AnimationCompat/AnimatorListenerAdapterProxy;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/AnimationCompat/AnimatorListenerAdapterProxy;->onAnimationRepeat(Ljava/lang/Object;)V

    return-void
.end method

.method public onAnimationResume(Lorg/telegram/ui/Animation/Animator10;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/AnimationCompat/AnimatorListenerAdapterProxy$1;->this$0:Lorg/telegram/ui/AnimationCompat/AnimatorListenerAdapterProxy;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/AnimationCompat/AnimatorListenerAdapterProxy;->onAnimationResume(Ljava/lang/Object;)V

    return-void
.end method

.method public onAnimationStart(Lorg/telegram/ui/Animation/Animator10;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/AnimationCompat/AnimatorListenerAdapterProxy$1;->this$0:Lorg/telegram/ui/AnimationCompat/AnimatorListenerAdapterProxy;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/AnimationCompat/AnimatorListenerAdapterProxy;->onAnimationStart(Ljava/lang/Object;)V

    return-void
.end method
