.class public Lorg/telegram/ui/Components/PipVideoView;
.super Ljava/lang/Object;
.source "PipVideoView.java"


# instance fields
.field private controlsView:Landroid/view/View;

.field private decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private parentActivity:Landroid/app/Activity;

.field private parentSheet:Lorg/telegram/ui/Components/EmbedBottomSheet;

.field private preferences:Landroid/content/SharedPreferences;

.field private videoHeight:I

.field private videoWidth:I

.field private windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private windowManager:Landroid/view/WindowManager;

.field private windowView:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoView;->controlsView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/PipVideoView;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/PipVideoView;->videoWidth:I

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/PipVideoView;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoView;->windowView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoView;->windowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/PipVideoView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/PipVideoView;->animateToBoundsMaybe()V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/PipVideoView;)Lorg/telegram/ui/Components/EmbedBottomSheet;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoView;->parentSheet:Lorg/telegram/ui/Components/EmbedBottomSheet;

    return-object v0
.end method

.method private animateToBoundsMaybe()V
    .locals 15

    const/4 v14, 0x2

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lorg/telegram/ui/Components/PipVideoView;->videoWidth:I

    invoke-static {v2, v3, v12, v0}, Lorg/telegram/ui/Components/PipVideoView;->getSideCoord(ZIFI)I

    move-result v1

    iget v0, p0, Lorg/telegram/ui/Components/PipVideoView;->videoWidth:I

    invoke-static {v2, v2, v12, v0}, Lorg/telegram/ui/Components/PipVideoView;->getSideCoord(ZIFI)I

    move-result v4

    iget v0, p0, Lorg/telegram/ui/Components/PipVideoView;->videoHeight:I

    invoke-static {v3, v3, v12, v0}, Lorg/telegram/ui/Components/PipVideoView;->getSideCoord(ZIFI)I

    move-result v5

    iget v0, p0, Lorg/telegram/ui/Components/PipVideoView;->videoHeight:I

    invoke-static {v3, v2, v12, v0}, Lorg/telegram/ui/Components/PipVideoView;->getSideCoord(ZIFI)I

    move-result v6

    const/4 v0, 0x0

    iget-object v7, p0, Lorg/telegram/ui/Components/PipVideoView;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    iget-object v9, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v9, v1, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-le v9, v8, :cond_0

    iget-object v9, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    if-gez v9, :cond_9

    iget-object v9, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v10, p0, Lorg/telegram/ui/Components/PipVideoView;->videoWidth:I

    neg-int v10, v10

    div-int/lit8 v10, v10, 0x4

    if-le v9, v10, :cond_9

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    const-string/jumbo v4, "sidex"

    invoke-interface {v7, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v4, p0, Lorg/telegram/ui/Components/PipVideoView;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v4

    cmpl-float v4, v4, v13

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/Components/PipVideoView;->windowView:Landroid/widget/FrameLayout;

    const-string/jumbo v9, "alpha"

    new-array v10, v2, [F

    aput v13, v10, v3

    invoke-static {v4, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string/jumbo v4, "x"

    new-array v9, v2, [I

    aput v1, v9, v3

    invoke-static {p0, v4, v9}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v3

    :goto_0
    if-nez v1, :cond_5

    iget-object v4, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int v4, v5, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v4, v8, :cond_3

    iget-object v4, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v9

    if-gt v4, v9, :cond_11

    :cond_3
    if-nez v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    const-string/jumbo v4, "sidey"

    invoke-interface {v7, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v4, "y"

    new-array v6, v2, [I

    aput v5, v6, v3

    invoke-static {p0, v4, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_5
    if-eqz v0, :cond_8

    iget-object v4, p0, Lorg/telegram/ui/Components/PipVideoView;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    if-nez v4, :cond_6

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/Components/PipVideoView;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    :cond_6
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v5, p0, Lorg/telegram/ui/Components/PipVideoView;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v6, 0x96

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoView;->windowView:Landroid/widget/FrameLayout;

    const-string/jumbo v5, "alpha"

    new-array v2, v2, [F

    aput v12, v2, v3

    invoke-static {v1, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/telegram/ui/Components/PipVideoView$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PipVideoView$2;-><init>(Lorg/telegram/ui/Components/PipVideoView;)V

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_7
    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    :cond_8
    return-void

    :cond_9
    iget-object v9, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v9, v4, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-le v9, v8, :cond_a

    iget-object v9, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    sget-object v10, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    iget v11, p0, Lorg/telegram/ui/Components/PipVideoView;->videoWidth:I

    sub-int/2addr v10, v11

    if-le v9, v10, :cond_d

    iget-object v9, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    sget-object v10, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    iget v11, p0, Lorg/telegram/ui/Components/PipVideoView;->videoWidth:I

    div-int/lit8 v11, v11, 0x4

    mul-int/lit8 v11, v11, 0x3

    sub-int/2addr v10, v11

    if-ge v9, v10, :cond_d

    :cond_a
    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_b
    const-string/jumbo v1, "sidex"

    invoke-interface {v7, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoView;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v13

    if-eqz v1, :cond_c

    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoView;->windowView:Landroid/widget/FrameLayout;

    const-string/jumbo v9, "alpha"

    new-array v10, v2, [F

    aput v13, v10, v3

    invoke-static {v1, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    const-string/jumbo v1, "x"

    new-array v9, v2, [I

    aput v4, v9, v3

    invoke-static {p0, v1, v9}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v3

    goto/16 :goto_0

    :cond_d
    iget-object v9, p0, Lorg/telegram/ui/Components/PipVideoView;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v9

    cmpl-float v9, v9, v13

    if-eqz v9, :cond_10

    if-nez v0, :cond_e

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_e
    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-gez v1, :cond_f

    const-string/jumbo v1, "x"

    new-array v4, v2, [I

    iget v9, p0, Lorg/telegram/ui/Components/PipVideoView;->videoWidth:I

    neg-int v9, v9

    aput v9, v4, v3

    invoke-static {p0, v1, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    move v1, v2

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v1, "x"

    new-array v4, v2, [I

    sget-object v9, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    aput v9, v4, v3

    invoke-static {p0, v1, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_10
    const-string/jumbo v9, "px"

    iget-object v10, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v10, v1

    int-to-float v10, v10

    sub-int v1, v4, v1

    int-to-float v1, v1

    div-float v1, v10, v1

    invoke-interface {v7, v9, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "sidex"

    invoke-interface {v7, v1, v14}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move v1, v3

    goto/16 :goto_0

    :cond_11
    iget-object v4, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int v4, v6, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-gt v4, v8, :cond_13

    if-nez v0, :cond_12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_12
    const-string/jumbo v4, "sidey"

    invoke-interface {v7, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v4, "y"

    new-array v5, v2, [I

    aput v6, v5, v3

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_13
    const-string/jumbo v4, "py"

    iget-object v8, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v8, v5

    int-to-float v8, v8

    sub-int v5, v6, v5

    int-to-float v5, v5

    div-float v5, v8, v5

    invoke-interface {v7, v4, v5}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v4, "sidey"

    invoke-interface {v7, v4, v14}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1
.end method

.method public static getPipRect(F)Lorg/telegram/ui/Components/Rect;
    .locals 9

    const/4 v8, 0x1

    const/high16 v6, 0x43400000    # 192.0f

    const/4 v5, 0x0

    const/4 v7, 0x0

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "pipconfig"

    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "sidex"

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v1, "sidey"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v1, "px"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v4

    const-string/jumbo v1, "py"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v5

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v0, v1

    div-float/2addr v0, p0

    float-to-int v0, v0

    :goto_0
    new-instance v6, Lorg/telegram/ui/Components/Rect;

    invoke-static {v8, v2, v4, v1}, Lorg/telegram/ui/Components/PipVideoView;->getSideCoord(ZIFI)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v7, v3, v5, v0}, Lorg/telegram/ui/Components/PipVideoView;->getSideCoord(ZIFI)I

    move-result v3

    int-to-float v3, v3

    int-to-float v1, v1

    int-to-float v0, v0

    invoke-direct {v6, v2, v3, v1, v0}, Lorg/telegram/ui/Components/Rect;-><init>(FFFF)V

    return-object v6

    :cond_0
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v1, v0

    mul-float/2addr v1, p0

    float-to-int v1, v1

    goto :goto_0
.end method

.method private static getSideCoord(ZIFI)I
    .locals 3

    const/high16 v2, 0x41200000    # 10.0f

    if-eqz p0, :cond_1

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, p3

    :goto_0
    if-nez p1, :cond_2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    :goto_1
    if-nez p0, :cond_0

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0

    :cond_1
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, p3

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_1

    :cond_3
    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoView;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoView;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v2, p0, Lorg/telegram/ui/Components/PipVideoView;->parentSheet:Lorg/telegram/ui/Components/EmbedBottomSheet;

    iput-object v2, p0, Lorg/telegram/ui/Components/PipVideoView;->parentActivity:Landroid/app/Activity;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getX()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    return v0
.end method

.method public onConfigurationChanged()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoView;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "sidex"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoView;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "sidey"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PipVideoView;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "px"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/PipVideoView;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "py"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, p0, Lorg/telegram/ui/Components/PipVideoView;->videoWidth:I

    invoke-static {v7, v0, v2, v5}, Lorg/telegram/ui/Components/PipVideoView;->getSideCoord(ZIFI)I

    move-result v0

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lorg/telegram/ui/Components/PipVideoView;->videoHeight:I

    invoke-static {v6, v1, v3, v2}, Lorg/telegram/ui/Components/PipVideoView;->getSideCoord(ZIFI)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoView;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoView;->windowView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setX(I)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoView;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoView;->windowView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setY(I)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoView;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoView;->windowView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public show(Landroid/app/Activity;Lorg/telegram/ui/Components/EmbedBottomSheet;Landroid/view/View;FI)Landroid/view/TextureView;
    .locals 8

    const/high16 v1, 0x43400000    # 192.0f

    const/4 v6, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v4, 0x0

    const/4 v3, -0x1

    new-instance v0, Lorg/telegram/ui/Components/PipVideoView$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/PipVideoView$1;-><init>(Lorg/telegram/ui/Components/PipVideoView;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PipVideoView;->windowView:Landroid/widget/FrameLayout;

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p4, v0

    if-lez v0, :cond_0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/PipVideoView;->videoWidth:I

    iget v0, p0, Lorg/telegram/ui/Components/PipVideoView;->videoWidth:I

    int-to-float v0, v0

    div-float/2addr v0, p4

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/PipVideoView;->videoHeight:I

    :goto_0
    new-instance v0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p4, p5}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->setAspectRatio(FI)V

    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoView;->windowView:Landroid/widget/FrameLayout;

    const/16 v2, 0x11

    invoke-static {v3, v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/view/TextureView;

    invoke-direct {v1, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/PipVideoView;->controlsView:Landroid/view/View;

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoView;->windowView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/PipVideoView;->controlsView:Landroid/view/View;

    invoke-static {v3, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lorg/telegram/ui/Components/PipVideoView;->windowManager:Landroid/view/WindowManager;

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "pipconfig"

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/PipVideoView;->preferences:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoView;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "sidex"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/PipVideoView;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "sidey"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/PipVideoView;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "px"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/PipVideoView;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v5, "py"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v4

    :try_start_0
    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v5}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, p0, Lorg/telegram/ui/Components/PipVideoView;->videoWidth:I

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v5, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, p0, Lorg/telegram/ui/Components/PipVideoView;->videoHeight:I

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v5, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v6, 0x1

    iget v7, p0, Lorg/telegram/ui/Components/PipVideoView;->videoWidth:I

    invoke-static {v6, v0, v3, v7}, Lorg/telegram/ui/Components/PipVideoView;->getSideCoord(ZIFI)I

    move-result v0

    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x0

    iget v5, p0, Lorg/telegram/ui/Components/PipVideoView;->videoHeight:I

    invoke-static {v3, v2, v4, v5}, Lorg/telegram/ui/Components/PipVideoView;->getSideCoord(ZIFI)I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x33

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7d3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v2, 0x1000208

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoView;->windowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lorg/telegram/ui/Components/PipVideoView;->windowView:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iput-object p2, p0, Lorg/telegram/ui/Components/PipVideoView;->parentSheet:Lorg/telegram/ui/Components/EmbedBottomSheet;

    iput-object p1, p0, Lorg/telegram/ui/Components/PipVideoView;->parentActivity:Landroid/app/Activity;

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/PipVideoView;->videoHeight:I

    iget v0, p0, Lorg/telegram/ui/Components/PipVideoView;->videoHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, p4

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/PipVideoView;->videoWidth:I

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_1
.end method
