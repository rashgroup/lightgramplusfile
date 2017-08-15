.class public Lorg/telegram/ui/AnimationCompat/AnimatorListenerAdapterProxy;
.super Ljava/lang/Object;
.source "AnimatorListenerAdapterProxy.java"


# instance fields
.field protected animatorListenerAdapter:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lorg/telegram/ui/Animation/View10;->NEED_PROXY:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/ui/AnimationCompat/AnimatorListenerAdapterProxy$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/AnimationCompat/AnimatorListenerAdapterProxy$1;-><init>(Lorg/telegram/ui/AnimationCompat/AnimatorListenerAdapterProxy;)V

    iput-object v0, p0, Lorg/telegram/ui/AnimationCompat/AnimatorListenerAdapterProxy;->animatorListenerAdapter:Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lorg/telegram/ui/AnimationCompat/AnimatorListenerAdapterProxy$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/AnimationCompat/AnimatorListenerAdapterProxy$2;-><init>(Lorg/telegram/ui/AnimationCompat/AnimatorListenerAdapterProxy;)V

    iput-object v0, p0, Lorg/telegram/ui/AnimationCompat/AnimatorListenerAdapterProxy;->animatorListenerAdapter:Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public onAnimationCancel(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onAnimationPause(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onAnimationResume(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
