.class public Lorg/telegram/ui/Animation/ValueAnimator;
.super Lorg/telegram/ui/Animation/Animator10;
.source "ValueAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Animation/ValueAnimator$AnimatorUpdateListener;,
        Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;
    }
.end annotation


# static fields
.field public static final INFINITE:I = -0x1

.field public static final RESTART:I = 0x1

.field public static final REVERSE:I = 0x2

.field static final RUNNING:I = 0x1

.field static final SEEKED:I = 0x2

.field static final STOPPED:I

.field protected static sAnimationHandler:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static final sDefaultInterpolator:Landroid/view/animation/Interpolator;

.field private static sDurationScale:F


# instance fields
.field private mCurrentFraction:F

.field private mCurrentIteration:I

.field private mDelayStartTime:J

.field private mDuration:J

.field mInitialized:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mPauseTime:J

.field private mPlayingBackwards:Z

.field mPlayingState:I

.field private mRepeatCount:I

.field private mRepeatMode:I

.field private mResumed:Z

.field private mRunning:Z

.field mSeekTime:J

.field private mStartDelay:J

.field private mStartListenersCalled:Z

.field mStartTime:J

.field private mStarted:Z

.field private mStartedDelay:Z

.field private mUnscaledDuration:J

.field private mUnscaledStartDelay:J

.field private mUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Animation/ValueAnimator$AnimatorUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field mValues:[Lorg/telegram/ui/Animation/PropertyValuesHolder;

.field mValuesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/ui/Animation/PropertyValuesHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lorg/telegram/ui/Animation/ValueAnimator;->sDurationScale:F

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/telegram/ui/Animation/ValueAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lorg/telegram/ui/Animation/ValueAnimator;->sDefaultInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/telegram/ui/Animation/Animator10;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mSeekTime:J

    iput-boolean v2, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mResumed:Z

    iput-boolean v2, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mPlayingBackwards:Z

    iput v2, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mCurrentIteration:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mCurrentFraction:F

    iput-boolean v2, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mStartedDelay:Z

    iput v2, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mPlayingState:I

    iput-boolean v2, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mRunning:Z

    iput-boolean v2, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mStarted:Z

    iput-boolean v2, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mStartListenersCalled:Z

    iput-boolean v2, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mInitialized:Z

    const/high16 v0, 0x43960000    # 300.0f

    sget v1, Lorg/telegram/ui/Animation/ValueAnimator;->sDurationScale:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mDuration:J

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mUnscaledDuration:J

    iput-wide v4, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mStartDelay:J

    iput-wide v4, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mUnscaledStartDelay:J

    iput v2, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mRepeatCount:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mRepeatMode:I

    sget-object v0, Lorg/telegram/ui/Animation/ValueAnimator;->sDefaultInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Animation/ValueAnimator;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mStartDelay:J

    return-wide v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Animation/ValueAnimator;Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Animation/ValueAnimator;->startAnimation(Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/Animation/ValueAnimator;J)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Animation/ValueAnimator;->delayedAnimationFrame(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lorg/telegram/ui/Animation/ValueAnimator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mRunning:Z

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/Animation/ValueAnimator;Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Animation/ValueAnimator;->endAnimation(Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;)V

    return-void
.end method

.method public static clearAllAnimations()V
    .locals 2

    sget-object v0, Lorg/telegram/ui/Animation/ValueAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v0, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v0, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method private delayedAnimationFrame(J)Z
    .locals 7

    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mStartedDelay:Z

    if-nez v2, :cond_1

    iput-boolean v1, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mStartedDelay:Z

    iput-wide p1, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mDelayStartTime:J

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mPaused:Z

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mPauseTime:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    iput-wide p1, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mPauseTime:J

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mResumed:Z

    if-eqz v2, :cond_3

    iput-boolean v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mResumed:Z

    iget-wide v2, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mPauseTime:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    iget-wide v2, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mDelayStartTime:J

    iget-wide v4, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mPauseTime:J

    sub-long v4, p1, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mDelayStartTime:J

    :cond_3
    iget-wide v2, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mDelayStartTime:J

    sub-long v2, p1, v2

    iget-wide v4, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mStartDelay:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    iget-wide v4, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mStartDelay:J

    sub-long/2addr v2, v4

    sub-long v2, p1, v2

    iput-wide v2, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mStartTime:J

    iput v1, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mPlayingState:I

    move v0, v1

    goto :goto_0
.end method

.method private endAnimation(Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p1, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p1, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p1, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iput v2, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mPlayingState:I

    iput-boolean v2, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mPaused:Z

    iget-boolean v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mStarted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mRunning:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mRunning:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/Animation/ValueAnimator;->notifyStartListeners()V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/Animator10$AnimatorListener;

    invoke-interface {v0, p0}, Lorg/telegram/ui/Animation/Animator10$AnimatorListener;->onAnimationEnd(Lorg/telegram/ui/Animation/Animator10;)V

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mRunning:Z

    iput-boolean v2, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mStarted:Z

    iput-boolean v2, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mStartListenersCalled:Z

    iput-boolean v2, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mPlayingBackwards:Z

    return-void
.end method

.method public static getCurrentAnimationsCount()I
    .locals 1

    sget-object v0, Lorg/telegram/ui/Animation/ValueAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDurationScale()F
    .locals 1

    sget v0, Lorg/telegram/ui/Animation/ValueAnimator;->sDurationScale:F

    return v0
.end method

.method private static getOrCreateAnimationHandler()Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;
    .locals 2

    sget-object v0, Lorg/telegram/ui/Animation/ValueAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;

    invoke-direct {v0}, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;-><init>()V

    sget-object v1, Lorg/telegram/ui/Animation/ValueAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private notifyStartListeners()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mStartListenersCalled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/Animator10$AnimatorListener;

    invoke-interface {v0, p0}, Lorg/telegram/ui/Animation/Animator10$AnimatorListener;->onAnimationStart(Lorg/telegram/ui/Animation/Animator10;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mStartListenersCalled:Z

    return-void
.end method

.method public static varargs ofFloat([F)Lorg/telegram/ui/Animation/ValueAnimator;
    .locals 1

    new-instance v0, Lorg/telegram/ui/Animation/ValueAnimator;

    invoke-direct {v0}, Lorg/telegram/ui/Animation/ValueAnimator;-><init>()V

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Animation/ValueAnimator;->setFloatValues([F)V

    return-object v0
.end method

.method public static varargs ofInt([I)Lorg/telegram/ui/Animation/ValueAnimator;
    .locals 1

    new-instance v0, Lorg/telegram/ui/Animation/ValueAnimator;

    invoke-direct {v0}, Lorg/telegram/ui/Animation/ValueAnimator;-><init>()V

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Animation/ValueAnimator;->setIntValues([I)V

    return-object v0
.end method

.method public static varargs ofObject(Lorg/telegram/ui/Animation/TypeEvaluator;[Ljava/lang/Object;)Lorg/telegram/ui/Animation/ValueAnimator;
    .locals 1

    new-instance v0, Lorg/telegram/ui/Animation/ValueAnimator;

    invoke-direct {v0}, Lorg/telegram/ui/Animation/ValueAnimator;-><init>()V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Animation/ValueAnimator;->setEvaluator(Lorg/telegram/ui/Animation/TypeEvaluator;)V

    return-object v0
.end method

.method public static varargs ofPropertyValuesHolder([Lorg/telegram/ui/Animation/PropertyValuesHolder;)Lorg/telegram/ui/Animation/ValueAnimator;
    .locals 1

    new-instance v0, Lorg/telegram/ui/Animation/ValueAnimator;

    invoke-direct {v0}, Lorg/telegram/ui/Animation/ValueAnimator;-><init>()V

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Animation/ValueAnimator;->setValues([Lorg/telegram/ui/Animation/PropertyValuesHolder;)V

    return-object v0
.end method

.method public static setDurationScale(F)V
    .locals 0

    sput p0, Lorg/telegram/ui/Animation/ValueAnimator;->sDurationScale:F

    return-void
.end method

.method private start(Z)V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v1, "Animators may only be run on Looper threads"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mPlayingBackwards:Z

    iput v4, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mCurrentIteration:I

    iput v4, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mPlayingState:I

    iput-boolean v5, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mStarted:Z

    iput-boolean v4, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mStartedDelay:Z

    iput-boolean v4, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mPaused:Z

    invoke-static {}, Lorg/telegram/ui/Animation/ValueAnimator;->getOrCreateAnimationHandler()Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;

    move-result-object v0

    iget-object v1, v0, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v2, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mStartDelay:J

    cmp-long v1, v2, v6

    if-nez v1, :cond_1

    invoke-virtual {p0, v6, v7}, Lorg/telegram/ui/Animation/ValueAnimator;->setCurrentPlayTime(J)V

    iput v4, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mPlayingState:I

    iput-boolean v5, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mRunning:Z

    invoke-direct {p0}, Lorg/telegram/ui/Animation/ValueAnimator;->notifyStartListeners()V

    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;->start()V

    return-void
.end method

.method private startAnimation(Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;)V
    .locals 4

    invoke-virtual {p0}, Lorg/telegram/ui/Animation/ValueAnimator;->initAnimation()V

    iget-object v0, p1, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mStartDelay:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Animation/ValueAnimator;->notifyStartListeners()V

    :cond_0
    return-void
.end method


# virtual methods
.method public addUpdateListener(Lorg/telegram/ui/Animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method animateValue(F)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mCurrentFraction:F

    iget-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mValues:[Lorg/telegram/ui/Animation/PropertyValuesHolder;

    array-length v0, v0

    iget-object v2, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mValues:[Lorg/telegram/ui/Animation/PropertyValuesHolder;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Animation/PropertyValuesHolder;->calculateValue(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    iget-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/ValueAnimator$AnimatorUpdateListener;

    invoke-interface {v0, p0}, Lorg/telegram/ui/Animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Lorg/telegram/ui/Animation/ValueAnimator;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method animationFrame(J)Z
    .locals 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    iget v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mPlayingState:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return v2

    :pswitch_0
    iget-wide v6, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mDuration:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_1

    iget-wide v6, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mStartTime:J

    sub-long v6, p1, v6

    long-to-float v0, v6

    iget-wide v6, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mDuration:J

    long-to-float v3, v6

    div-float v3, v0, v3

    :goto_1
    cmpl-float v0, v3, v4

    if-ltz v0, :cond_7

    iget v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mCurrentIteration:I

    iget v5, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mRepeatCount:I

    if-lt v0, v5, :cond_0

    iget v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mRepeatCount:I

    const/4 v5, -0x1

    if-ne v0, v5, :cond_6

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    iget-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/Animator10$AnimatorListener;

    invoke-interface {v0, p0}, Lorg/telegram/ui/Animation/Animator10$AnimatorListener;->onAnimationRepeat(Lorg/telegram/ui/Animation/Animator10;)V

    goto :goto_2

    :cond_1
    move v3, v4

    goto :goto_1

    :cond_2
    iget v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mRepeatMode:I

    const/4 v5, 0x2

    if-ne v0, v5, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mPlayingBackwards:Z

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mPlayingBackwards:Z

    :cond_3
    iget v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mCurrentIteration:I

    float-to-int v1, v3

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mCurrentIteration:I

    rem-float v0, v3, v4

    iget-wide v6, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mStartTime:J

    iget-wide v8, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mDuration:J

    add-long/2addr v6, v8

    iput-wide v6, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mStartTime:J

    :goto_4
    iget-boolean v1, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mPlayingBackwards:Z

    if-eqz v1, :cond_4

    sub-float v0, v4, v0

    :cond_4
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Animation/ValueAnimator;->animateValue(F)V

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    move v2, v1

    goto :goto_4

    :cond_7
    move v0, v3

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public cancel()V
    .locals 3

    invoke-static {}, Lorg/telegram/ui/Animation/ValueAnimator;->getOrCreateAnimationHandler()Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;

    move-result-object v1

    iget v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mPlayingState:I

    if-nez v0, :cond_0

    iget-object v0, v1, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v1, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mStarted:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mRunning:Z

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mRunning:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/Animation/ValueAnimator;->notifyStartListeners()V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/Animator10$AnimatorListener;

    invoke-interface {v0, p0}, Lorg/telegram/ui/Animation/Animator10$AnimatorListener;->onAnimationCancel(Lorg/telegram/ui/Animation/Animator10;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v1}, Lorg/telegram/ui/Animation/ValueAnimator;->endAnimation(Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;)V

    :cond_4
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/Animation/ValueAnimator;->clone()Lorg/telegram/ui/Animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/telegram/ui/Animation/Animator10;
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/Animation/ValueAnimator;->clone()Lorg/telegram/ui/Animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/telegram/ui/Animation/ValueAnimator;
    .locals 7

    const/4 v2, 0x0

    invoke-super {p0}, Lorg/telegram/ui/Animation/Animator10;->clone()Lorg/telegram/ui/Animation/Animator10;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/ValueAnimator;

    iget-object v1, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/Animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Animation/ValueAnimator$AnimatorUpdateListener;

    iget-object v4, v0, Lorg/telegram/ui/Animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-wide/16 v4, -0x1

    iput-wide v4, v0, Lorg/telegram/ui/Animation/ValueAnimator;->mSeekTime:J

    iput-boolean v2, v0, Lorg/telegram/ui/Animation/ValueAnimator;->mPlayingBackwards:Z

    iput v2, v0, Lorg/telegram/ui/Animation/ValueAnimator;->mCurrentIteration:I

    iput-boolean v2, v0, Lorg/telegram/ui/Animation/ValueAnimator;->mInitialized:Z

    iput v2, v0, Lorg/telegram/ui/Animation/ValueAnimator;->mPlayingState:I

    iput-boolean v2, v0, Lorg/telegram/ui/Animation/ValueAnimator;->mStartedDelay:Z

    iget-object v3, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mValues:[Lorg/telegram/ui/Animation/PropertyValuesHolder;

    if-eqz v3, :cond_1

    array-length v4, v3

    new-array v1, v4, [Lorg/telegram/ui/Animation/PropertyValuesHolder;

    iput-object v1, v0, Lorg/telegram/ui/Animation/ValueAnimator;->mValues:[Lorg/telegram/ui/Animation/PropertyValuesHolder;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, v0, Lorg/telegram/ui/Animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_1

    aget-object v2, v3, v1

    invoke-virtual {v2}, Lorg/telegram/ui/Animation/PropertyValuesHolder;->clone()Lorg/telegram/ui/Animation/PropertyValuesHolder;

    move-result-object v2

    iget-object v5, v0, Lorg/telegram/ui/Animation/ValueAnimator;->mValues:[Lorg/telegram/ui/Animation/PropertyValuesHolder;

    aput-object v2, v5, v1

    iget-object v5, v0, Lorg/telegram/ui/Animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lorg/telegram/ui/Animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method final doAnimationFrame(J)Z
    .locals 7

    const/4 v0, 0x0

    const-wide/16 v4, 0x0

    iget v1, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mPlayingState:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput v1, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mPlayingState:I

    iget-wide v2, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mSeekTime:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    iput-wide p1, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mStartTime:J

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mPaused:Z

    if-eqz v1, :cond_3

    iget-wide v2, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mPauseTime:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    iput-wide p1, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mPauseTime:J

    :cond_1
    :goto_1
    return v0

    :cond_2
    iget-wide v2, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mSeekTime:J

    sub-long v2, p1, v2

    iput-wide v2, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mStartTime:J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mSeekTime:J

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mResumed:Z

    if-eqz v1, :cond_4

    iput-boolean v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mResumed:Z

    iget-wide v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mPauseTime:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_4

    iget-wide v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mStartTime:J

    iget-wide v2, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mPauseTime:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mStartTime:J

    :cond_4
    iget-wide v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mStartTime:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Animation/ValueAnimator;->animationFrame(J)Z

    move-result v0

    goto :goto_1
.end method

.method public end()V
    .locals 2

    invoke-static {}, Lorg/telegram/ui/Animation/ValueAnimator;->getOrCreateAnimationHandler()Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;

    move-result-object v1

    iget-object v0, v1, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v1, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mStartedDelay:Z

    invoke-direct {p0, v1}, Lorg/telegram/ui/Animation/ValueAnimator;->startAnimation(Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mStarted:Z

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mPlayingBackwards:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Animation/ValueAnimator;->animateValue(F)V

    invoke-direct {p0, v1}, Lorg/telegram/ui/Animation/ValueAnimator;->endAnimation(Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mInitialized:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Animation/ValueAnimator;->initAnimation()V

    goto :goto_0

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1
.end method

.method public getAnimatedFraction()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mCurrentFraction:F

    return v0
.end method

.method public getAnimatedValue()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mValues:[Lorg/telegram/ui/Animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mValues:[Lorg/telegram/ui/Animation/PropertyValuesHolder;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mValues:[Lorg/telegram/ui/Animation/PropertyValuesHolder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/ui/Animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPlayTime()J
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mPlayingState:I

    if-nez v0, :cond_1

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mStartTime:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mUnscaledDuration:J

    return-wide v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getRepeatCount()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mRepeatCount:I

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mRepeatMode:I

    return v0
.end method

.method public getStartDelay()J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mUnscaledStartDelay:J

    return-wide v0
.end method

.method public getValues()[Lorg/telegram/ui/Animation/PropertyValuesHolder;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mValues:[Lorg/telegram/ui/Animation/PropertyValuesHolder;

    return-object v0
.end method

.method initAnimation()V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mInitialized:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mValues:[Lorg/telegram/ui/Animation/PropertyValuesHolder;

    array-length v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mValues:[Lorg/telegram/ui/Animation/PropertyValuesHolder;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lorg/telegram/ui/Animation/PropertyValuesHolder;->init()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mInitialized:Z

    :cond_1
    return-void
.end method

.method public isRunning()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mPlayingState:I

    if-eq v1, v0, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mRunning:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStarted()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mStarted:Z

    return v0
.end method

.method public pause()V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mPaused:Z

    invoke-super {p0}, Lorg/telegram/ui/Animation/Animator10;->pause()V

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mPaused:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mPauseTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mResumed:Z

    :cond_0
    return-void
.end method

.method public removeAllUpdateListeners()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public removeUpdateListener(Lorg/telegram/ui/Animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public resume()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mPaused:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mResumed:Z

    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/Animation/Animator10;->resume()V

    return-void
.end method

.method public reverse()V
    .locals 6

    const/4 v1, 0x1

    iget-boolean v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mPlayingBackwards:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mPlayingBackwards:Z

    iget v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mPlayingState:I

    if-ne v0, v1, :cond_1

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mStartTime:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mDuration:J

    sub-long v2, v4, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mStartTime:J

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mStarted:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/Animation/ValueAnimator;->end()V

    goto :goto_1

    :cond_2
    invoke-direct {p0, v1}, Lorg/telegram/ui/Animation/ValueAnimator;->start(Z)V

    goto :goto_1
.end method

.method public setCurrentPlayTime(J)V
    .locals 5

    invoke-virtual {p0}, Lorg/telegram/ui/Animation/ValueAnimator;->initAnimation()V

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mPlayingState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    iput-wide p1, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mSeekTime:J

    const/4 v2, 0x2

    iput v2, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mPlayingState:I

    :cond_0
    sub-long v2, v0, p1

    iput-wide v2, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mStartTime:J

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Animation/ValueAnimator;->doAnimationFrame(J)Z

    return-void
.end method

.method public bridge synthetic setDuration(J)Lorg/telegram/ui/Animation/Animator10;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Animation/ValueAnimator;->setDuration(J)Lorg/telegram/ui/Animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public setDuration(J)Lorg/telegram/ui/Animation/ValueAnimator;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Animators cannot have negative duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-wide p1, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mUnscaledDuration:J

    long-to-float v0, p1

    sget v1, Lorg/telegram/ui/Animation/ValueAnimator;->sDurationScale:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mDuration:J

    return-object p0
.end method

.method public setEvaluator(Lorg/telegram/ui/Animation/TypeEvaluator;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mValues:[Lorg/telegram/ui/Animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mValues:[Lorg/telegram/ui/Animation/PropertyValuesHolder;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mValues:[Lorg/telegram/ui/Animation/PropertyValuesHolder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Animation/PropertyValuesHolder;->setEvaluator(Lorg/telegram/ui/Animation/TypeEvaluator;)V

    :cond_0
    return-void
.end method

.method public varargs setFloatValues([F)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mValues:[Lorg/telegram/ui/Animation/PropertyValuesHolder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mValues:[Lorg/telegram/ui/Animation/PropertyValuesHolder;

    array-length v0, v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/telegram/ui/Animation/PropertyValuesHolder;

    const-string/jumbo v1, ""

    invoke-static {v1, p1}, Lorg/telegram/ui/Animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Lorg/telegram/ui/Animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Animation/ValueAnimator;->setValues([Lorg/telegram/ui/Animation/PropertyValuesHolder;)V

    :goto_1
    iput-boolean v2, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mInitialized:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mValues:[Lorg/telegram/ui/Animation/PropertyValuesHolder;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Animation/PropertyValuesHolder;->setFloatValues([F)V

    goto :goto_1
.end method

.method public varargs setIntValues([I)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mValues:[Lorg/telegram/ui/Animation/PropertyValuesHolder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mValues:[Lorg/telegram/ui/Animation/PropertyValuesHolder;

    array-length v0, v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/telegram/ui/Animation/PropertyValuesHolder;

    const-string/jumbo v1, ""

    invoke-static {v1, p1}, Lorg/telegram/ui/Animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Lorg/telegram/ui/Animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Animation/ValueAnimator;->setValues([Lorg/telegram/ui/Animation/PropertyValuesHolder;)V

    :goto_1
    iput-boolean v2, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mInitialized:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mValues:[Lorg/telegram/ui/Animation/PropertyValuesHolder;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Animation/PropertyValuesHolder;->setIntValues([I)V

    goto :goto_1
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0
.end method

.method public varargs setObjectValues([Ljava/lang/Object;)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mValues:[Lorg/telegram/ui/Animation/PropertyValuesHolder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mValues:[Lorg/telegram/ui/Animation/PropertyValuesHolder;

    array-length v0, v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/telegram/ui/Animation/PropertyValuesHolder;

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Lorg/telegram/ui/Animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Lorg/telegram/ui/Animation/TypeEvaluator;[Ljava/lang/Object;)Lorg/telegram/ui/Animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Animation/ValueAnimator;->setValues([Lorg/telegram/ui/Animation/PropertyValuesHolder;)V

    :goto_1
    iput-boolean v3, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mInitialized:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mValues:[Lorg/telegram/ui/Animation/PropertyValuesHolder;

    aget-object v0, v0, v3

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Animation/PropertyValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public setRepeatCount(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mRepeatCount:I

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mRepeatMode:I

    return-void
.end method

.method public setStartDelay(J)V
    .locals 3

    long-to-float v0, p1

    sget v1, Lorg/telegram/ui/Animation/ValueAnimator;->sDurationScale:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mStartDelay:J

    iput-wide p1, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mUnscaledStartDelay:J

    return-void
.end method

.method public varargs setValues([Lorg/telegram/ui/Animation/PropertyValuesHolder;)V
    .locals 6

    const/4 v1, 0x0

    array-length v0, p1

    iput-object p1, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mValues:[Lorg/telegram/ui/Animation/PropertyValuesHolder;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    array-length v2, p1

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    iget-object v4, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Lorg/telegram/ui/Animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lorg/telegram/ui/Animation/ValueAnimator;->mInitialized:Z

    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Animation/ValueAnimator;->start(Z)V

    return-void
.end method
