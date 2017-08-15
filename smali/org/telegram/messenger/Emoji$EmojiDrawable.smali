.class public Lorg/telegram/messenger/Emoji$EmojiDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "Emoji.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/Emoji;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmojiDrawable"
.end annotation


# static fields
.field private static paint:Landroid/graphics/Paint;

.field private static rect:Landroid/graphics/Rect;

.field private static textPaint:Landroid/text/TextPaint;


# instance fields
.field private fullSize:Z

.field private info:Lorg/telegram/messenger/Emoji$DrawableInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/Emoji$EmojiDrawable;->paint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lorg/telegram/messenger/Emoji$EmojiDrawable;->rect:Landroid/graphics/Rect;

    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/Emoji$EmojiDrawable;->textPaint:Landroid/text/TextPaint;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/Emoji$DrawableInfo;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/Emoji$EmojiDrawable;->fullSize:Z

    iput-object p1, p0, Lorg/telegram/messenger/Emoji$EmojiDrawable;->info:Lorg/telegram/messenger/Emoji$DrawableInfo;

    return-void
.end method

.method static synthetic access$102(Lorg/telegram/messenger/Emoji$EmojiDrawable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/messenger/Emoji$EmojiDrawable;->fullSize:Z

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/messenger/Emoji$EmojiDrawable;)Lorg/telegram/messenger/Emoji$DrawableInfo;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/Emoji$EmojiDrawable;->info:Lorg/telegram/messenger/Emoji$DrawableInfo;

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    # getter for: Lorg/telegram/messenger/Emoji;->emojiBmp:[[Landroid/graphics/Bitmap;
    invoke-static {}, Lorg/telegram/messenger/Emoji;->access$000()[[Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/Emoji$EmojiDrawable;->info:Lorg/telegram/messenger/Emoji$DrawableInfo;

    iget-byte v1, v1, Lorg/telegram/messenger/Emoji$DrawableInfo;->page:B

    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/telegram/messenger/Emoji$EmojiDrawable;->info:Lorg/telegram/messenger/Emoji$DrawableInfo;

    iget-byte v1, v1, Lorg/telegram/messenger/Emoji$DrawableInfo;->page2:B

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    # getter for: Lorg/telegram/messenger/Emoji;->loadingEmoji:[[Z
    invoke-static {}, Lorg/telegram/messenger/Emoji;->access$400()[[Z

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/Emoji$EmojiDrawable;->info:Lorg/telegram/messenger/Emoji$DrawableInfo;

    iget-byte v1, v1, Lorg/telegram/messenger/Emoji$DrawableInfo;->page:B

    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/telegram/messenger/Emoji$EmojiDrawable;->info:Lorg/telegram/messenger/Emoji$DrawableInfo;

    iget-byte v1, v1, Lorg/telegram/messenger/Emoji$DrawableInfo;->page2:B

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    # getter for: Lorg/telegram/messenger/Emoji;->loadingEmoji:[[Z
    invoke-static {}, Lorg/telegram/messenger/Emoji;->access$400()[[Z

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/Emoji$EmojiDrawable;->info:Lorg/telegram/messenger/Emoji$DrawableInfo;

    iget-byte v1, v1, Lorg/telegram/messenger/Emoji$DrawableInfo;->page:B

    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/telegram/messenger/Emoji$EmojiDrawable;->info:Lorg/telegram/messenger/Emoji$DrawableInfo;

    iget-byte v1, v1, Lorg/telegram/messenger/Emoji$DrawableInfo;->page2:B

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/Emoji$EmojiDrawable$1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/Emoji$EmojiDrawable$1;-><init>(Lorg/telegram/messenger/Emoji$EmojiDrawable;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lorg/telegram/messenger/Emoji$EmojiDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    # getter for: Lorg/telegram/messenger/Emoji;->placeholderPaint:Landroid/graphics/Paint;
    invoke-static {}, Lorg/telegram/messenger/Emoji;->access$700()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/messenger/Emoji$EmojiDrawable;->fullSize:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/telegram/messenger/Emoji$EmojiDrawable;->getDrawRect()Landroid/graphics/Rect;

    move-result-object v0

    :goto_1
    # getter for: Lorg/telegram/messenger/Emoji;->emojiBmp:[[Landroid/graphics/Bitmap;
    invoke-static {}, Lorg/telegram/messenger/Emoji;->access$000()[[Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/Emoji$EmojiDrawable;->info:Lorg/telegram/messenger/Emoji$DrawableInfo;

    iget-byte v2, v2, Lorg/telegram/messenger/Emoji$DrawableInfo;->page:B

    aget-object v1, v1, v2

    iget-object v2, p0, Lorg/telegram/messenger/Emoji$EmojiDrawable;->info:Lorg/telegram/messenger/Emoji$DrawableInfo;

    iget-byte v2, v2, Lorg/telegram/messenger/Emoji$DrawableInfo;->page2:B

    aget-object v1, v1, v2

    iget-object v2, p0, Lorg/telegram/messenger/Emoji$EmojiDrawable;->info:Lorg/telegram/messenger/Emoji$DrawableInfo;

    iget-object v2, v2, Lorg/telegram/messenger/Emoji$DrawableInfo;->rect:Landroid/graphics/Rect;

    sget-object v3, Lorg/telegram/messenger/Emoji$EmojiDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/Emoji$EmojiDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_1
.end method

.method public getDrawRect()Landroid/graphics/Rect;
    .locals 4

    invoke-virtual {p0}, Lorg/telegram/messenger/Emoji$EmojiDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    sget-object v3, Lorg/telegram/messenger/Emoji$EmojiDrawable;->rect:Landroid/graphics/Rect;

    iget-boolean v0, p0, Lorg/telegram/messenger/Emoji$EmojiDrawable;->fullSize:Z

    if-eqz v0, :cond_0

    # getter for: Lorg/telegram/messenger/Emoji;->bigImgSize:I
    invoke-static {}, Lorg/telegram/messenger/Emoji;->access$200()I

    move-result v0

    :goto_0
    div-int/lit8 v0, v0, 0x2

    sub-int v0, v1, v0

    iput v0, v3, Landroid/graphics/Rect;->left:I

    sget-object v3, Lorg/telegram/messenger/Emoji$EmojiDrawable;->rect:Landroid/graphics/Rect;

    iget-boolean v0, p0, Lorg/telegram/messenger/Emoji$EmojiDrawable;->fullSize:Z

    if-eqz v0, :cond_1

    # getter for: Lorg/telegram/messenger/Emoji;->bigImgSize:I
    invoke-static {}, Lorg/telegram/messenger/Emoji;->access$200()I

    move-result v0

    :goto_1
    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    iput v0, v3, Landroid/graphics/Rect;->right:I

    sget-object v1, Lorg/telegram/messenger/Emoji$EmojiDrawable;->rect:Landroid/graphics/Rect;

    iget-boolean v0, p0, Lorg/telegram/messenger/Emoji$EmojiDrawable;->fullSize:Z

    if-eqz v0, :cond_2

    # getter for: Lorg/telegram/messenger/Emoji;->bigImgSize:I
    invoke-static {}, Lorg/telegram/messenger/Emoji;->access$200()I

    move-result v0

    :goto_2
    div-int/lit8 v0, v0, 0x2

    sub-int v0, v2, v0

    iput v0, v1, Landroid/graphics/Rect;->top:I

    sget-object v1, Lorg/telegram/messenger/Emoji$EmojiDrawable;->rect:Landroid/graphics/Rect;

    iget-boolean v0, p0, Lorg/telegram/messenger/Emoji$EmojiDrawable;->fullSize:Z

    if-eqz v0, :cond_3

    # getter for: Lorg/telegram/messenger/Emoji;->bigImgSize:I
    invoke-static {}, Lorg/telegram/messenger/Emoji;->access$200()I

    move-result v0

    :goto_3
    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    sget-object v0, Lorg/telegram/messenger/Emoji$EmojiDrawable;->rect:Landroid/graphics/Rect;

    return-object v0

    :cond_0
    # getter for: Lorg/telegram/messenger/Emoji;->drawImgSize:I
    invoke-static {}, Lorg/telegram/messenger/Emoji;->access$300()I

    move-result v0

    goto :goto_0

    :cond_1
    # getter for: Lorg/telegram/messenger/Emoji;->drawImgSize:I
    invoke-static {}, Lorg/telegram/messenger/Emoji;->access$300()I

    move-result v0

    goto :goto_1

    :cond_2
    # getter for: Lorg/telegram/messenger/Emoji;->drawImgSize:I
    invoke-static {}, Lorg/telegram/messenger/Emoji;->access$300()I

    move-result v0

    goto :goto_2

    :cond_3
    # getter for: Lorg/telegram/messenger/Emoji;->drawImgSize:I
    invoke-static {}, Lorg/telegram/messenger/Emoji;->access$300()I

    move-result v0

    goto :goto_3
.end method

.method public getDrawableInfo()Lorg/telegram/messenger/Emoji$DrawableInfo;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/Emoji$EmojiDrawable;->info:Lorg/telegram/messenger/Emoji$DrawableInfo;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
