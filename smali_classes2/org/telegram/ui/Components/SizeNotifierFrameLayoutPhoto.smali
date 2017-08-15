.class public Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;
.super Landroid/widget/FrameLayout;
.source "SizeNotifierFrameLayoutPhoto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto$SizeNotifierFrameLayoutPhotoDelegate;
    }
.end annotation


# instance fields
.field private delegate:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto$SizeNotifierFrameLayoutPhotoDelegate;

.field private keyboardHeight:I

.field private rect:Landroid/graphics/Rect;

.field private windowManager:Landroid/view/WindowManager;

.field private withoutWindow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->rect:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;)Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto$SizeNotifierFrameLayoutPhotoDelegate;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->delegate:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto$SizeNotifierFrameLayoutPhotoDelegate;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->keyboardHeight:I

    return v0
.end method


# virtual methods
.method public getKeyboardHeight()I
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->getRootView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->rect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-boolean v2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->withoutWindow:Z

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->rect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-eqz v3, :cond_0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :cond_0
    sub-int v0, v2, v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getViewInset(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getViewInset(Landroid/view/View;)I

    move-result v1

    sub-int v1, v2, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int v2, v3, v2

    sub-int v1, v2, v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-le v1, v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public notifyHeightChanged()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->delegate:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto$SizeNotifierFrameLayoutPhotoDelegate;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->getKeyboardHeight()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->keyboardHeight:I

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    new-instance v1, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto$1;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto$1;-><init>(Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;Z)V

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->notifyHeightChanged()V

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto$SizeNotifierFrameLayoutPhotoDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->delegate:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto$SizeNotifierFrameLayoutPhotoDelegate;

    return-void
.end method

.method public setWithoutWindow(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->withoutWindow:Z

    return-void
.end method
