.class public abstract Lorg/telegram/ui/Animation/Keyframe;
.super Ljava/lang/Object;
.source "Keyframe.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Animation/Keyframe$FloatKeyframe;,
        Lorg/telegram/ui/Animation/Keyframe$IntKeyframe;,
        Lorg/telegram/ui/Animation/Keyframe$ObjectKeyframe;
    }
.end annotation


# instance fields
.field mFraction:F

.field mHasValue:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field mValueType:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Animation/Keyframe;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Animation/Keyframe;->mHasValue:Z

    return-void
.end method

.method public static ofFloat(F)Lorg/telegram/ui/Animation/Keyframe;
    .locals 1

    new-instance v0, Lorg/telegram/ui/Animation/Keyframe$FloatKeyframe;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Animation/Keyframe$FloatKeyframe;-><init>(F)V

    return-object v0
.end method

.method public static ofFloat(FF)Lorg/telegram/ui/Animation/Keyframe;
    .locals 1

    new-instance v0, Lorg/telegram/ui/Animation/Keyframe$FloatKeyframe;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Animation/Keyframe$FloatKeyframe;-><init>(FF)V

    return-object v0
.end method

.method public static ofInt(F)Lorg/telegram/ui/Animation/Keyframe;
    .locals 1

    new-instance v0, Lorg/telegram/ui/Animation/Keyframe$IntKeyframe;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Animation/Keyframe$IntKeyframe;-><init>(F)V

    return-object v0
.end method

.method public static ofInt(FI)Lorg/telegram/ui/Animation/Keyframe;
    .locals 1

    new-instance v0, Lorg/telegram/ui/Animation/Keyframe$IntKeyframe;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Animation/Keyframe$IntKeyframe;-><init>(FI)V

    return-object v0
.end method

.method public static ofObject(F)Lorg/telegram/ui/Animation/Keyframe;
    .locals 2

    new-instance v0, Lorg/telegram/ui/Animation/Keyframe$ObjectKeyframe;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Animation/Keyframe$ObjectKeyframe;-><init>(FLjava/lang/Object;)V

    return-object v0
.end method

.method public static ofObject(FLjava/lang/Object;)Lorg/telegram/ui/Animation/Keyframe;
    .locals 1

    new-instance v0, Lorg/telegram/ui/Animation/Keyframe$ObjectKeyframe;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Animation/Keyframe$ObjectKeyframe;-><init>(FLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/Animation/Keyframe;->clone()Lorg/telegram/ui/Animation/Keyframe;

    move-result-object v0

    return-object v0
.end method

.method public abstract clone()Lorg/telegram/ui/Animation/Keyframe;
.end method

.method public getFraction()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Animation/Keyframe;->mFraction:F

    return v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Animation/Keyframe;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Animation/Keyframe;->mValueType:Ljava/lang/Class;

    return-object v0
.end method

.method public abstract getValue()Ljava/lang/Object;
.end method

.method public hasValue()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Animation/Keyframe;->mHasValue:Z

    return v0
.end method

.method public setFraction(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Animation/Keyframe;->mFraction:F

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Animation/Keyframe;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public abstract setValue(Ljava/lang/Object;)V
.end method
