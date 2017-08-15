.class public Lorg/telegram/messenger/Emoji;
.super Ljava/lang/Object;
.source "Emoji.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/Emoji$EmojiSpan;,
        Lorg/telegram/messenger/Emoji$DrawableInfo;,
        Lorg/telegram/messenger/Emoji$EmojiDrawable;
    }
.end annotation


# static fields
.field private static bigImgSize:I = 0x0

.field private static final cols:[[I

.field private static drawImgSize:I = 0x0

.field private static emojiBmp:[[Landroid/graphics/Bitmap; = null

.field private static inited:Z = false

.field private static loadingEmoji:[[Z = null

.field private static placeholderPaint:Landroid/graphics/Paint; = null

.field private static rects:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/CharSequence;",
            "Lorg/telegram/messenger/Emoji$DrawableInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final splitCount:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v1, 0x1

    const/16 v2, 0x40

    const/4 v5, 0x5

    const/4 v3, 0x0

    const/4 v6, 0x4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/messenger/Emoji;->rects:Ljava/util/HashMap;

    sput-boolean v3, Lorg/telegram/messenger/Emoji;->inited:Z

    filled-new-array {v5, v6}, [I

    move-result-object v0

    const-class v4, Landroid/graphics/Bitmap;

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Landroid/graphics/Bitmap;

    sput-object v0, Lorg/telegram/messenger/Emoji;->emojiBmp:[[Landroid/graphics/Bitmap;

    filled-new-array {v5, v6}, [I

    move-result-object v0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lorg/telegram/messenger/Emoji;->loadingEmoji:[[Z

    new-array v0, v5, [[I

    new-array v4, v6, [I

    fill-array-data v4, :array_0

    aput-object v4, v0, v3

    new-array v4, v6, [I

    fill-array-data v4, :array_1

    aput-object v4, v0, v1

    const/4 v4, 0x2

    new-array v5, v6, [I

    fill-array-data v5, :array_2

    aput-object v5, v0, v4

    const/4 v4, 0x3

    new-array v5, v6, [I

    fill-array-data v5, :array_3

    aput-object v5, v0, v4

    new-array v4, v6, [I

    fill-array-data v4, :array_4

    aput-object v4, v0, v6

    sput-object v0, Lorg/telegram/messenger/Emoji;->cols:[[I

    const/4 v0, 0x2

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_0

    const/16 v0, 0x20

    move v13, v1

    move v1, v0

    move v0, v13

    :goto_0
    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sput v2, Lorg/telegram/messenger/Emoji;->drawImgSize:I

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_3

    const/high16 v2, 0x42200000    # 40.0f

    :goto_1
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sput v2, Lorg/telegram/messenger/Emoji;->bigImgSize:I

    move v2, v3

    :goto_2
    sget-object v4, Lorg/telegram/messenger/EmojiData;->data:[[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_5

    sget-object v4, Lorg/telegram/messenger/EmojiData;->data:[[Ljava/lang/String;

    aget-object v4, v4, v2

    array-length v4, v4

    int-to-float v4, v4

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v5, v4

    move v4, v3

    :goto_3
    sget-object v6, Lorg/telegram/messenger/EmojiData;->data:[[Ljava/lang/String;

    aget-object v6, v6, v2

    array-length v6, v6

    if-ge v4, v6, :cond_4

    div-int v6, v4, v5

    mul-int v7, v6, v5

    sub-int v7, v4, v7

    sget-object v8, Lorg/telegram/messenger/Emoji;->cols:[[I

    aget-object v8, v8, v2

    aget v8, v8, v6

    rem-int v8, v7, v8

    sget-object v9, Lorg/telegram/messenger/Emoji;->cols:[[I

    aget-object v9, v9, v2

    aget v9, v9, v6

    div-int/2addr v7, v9

    new-instance v9, Landroid/graphics/Rect;

    mul-int v10, v8, v1

    mul-int v11, v8, v0

    add-int/2addr v10, v11

    mul-int v11, v7, v1

    mul-int v12, v7, v0

    add-int/2addr v11, v12

    add-int/lit8 v12, v8, 0x1

    mul-int/2addr v12, v1

    mul-int/2addr v8, v0

    add-int/2addr v8, v12

    add-int/lit8 v12, v7, 0x1

    mul-int/2addr v12, v1

    mul-int/2addr v7, v0

    add-int/2addr v7, v12

    invoke-direct {v9, v10, v11, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v7, Lorg/telegram/messenger/Emoji;->rects:Ljava/util/HashMap;

    sget-object v8, Lorg/telegram/messenger/EmojiData;->data:[[Ljava/lang/String;

    aget-object v8, v8, v2

    aget-object v8, v8, v4

    new-instance v10, Lorg/telegram/messenger/Emoji$DrawableInfo;

    int-to-byte v11, v2

    int-to-byte v6, v6

    invoke-direct {v10, v9, v11, v6, v4}, Lorg/telegram/messenger/Emoji$DrawableInfo;-><init>(Landroid/graphics/Rect;BBI)V

    invoke-virtual {v7, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_0
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v4, 0x3fc00000    # 1.5f

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v4, 0x40000000    # 2.0f

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_2

    move v1, v2

    goto/16 :goto_0

    :cond_2
    move v1, v2

    goto/16 :goto_0

    :cond_3
    const/high16 v2, 0x42000000    # 32.0f

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lorg/telegram/messenger/Emoji;->placeholderPaint:Landroid/graphics/Paint;

    sget-object v0, Lorg/telegram/messenger/Emoji;->placeholderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    nop

    :array_0
    .array-data 4
        0xf
        0xf
        0xf
        0xf
    .end array-data

    :array_1
    .array-data 4
        0x6
        0x6
        0x6
        0x6
    .end array-data

    :array_2
    .array-data 4
        0x8
        0x8
        0x8
        0x8
    .end array-data

    :array_3
    .array-data 4
        0x9
        0x9
        0x9
        0x9
    .end array-data

    :array_4
    .array-data 4
        0xa
        0xa
        0xa
        0xa
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[[Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lorg/telegram/messenger/Emoji;->emojiBmp:[[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    sget v0, Lorg/telegram/messenger/Emoji;->bigImgSize:I

    return v0
.end method

.method static synthetic access$300()I
    .locals 1

    sget v0, Lorg/telegram/messenger/Emoji;->drawImgSize:I

    return v0
.end method

.method static synthetic access$400()[[Z
    .locals 1

    sget-object v0, Lorg/telegram/messenger/Emoji;->loadingEmoji:[[Z

    return-object v0
.end method

.method static synthetic access$600(II)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/Emoji;->loadEmoji(II)V

    return-void
.end method

.method static synthetic access$700()Landroid/graphics/Paint;
    .locals 1

    sget-object v0, Lorg/telegram/messenger/Emoji;->placeholderPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public static fixEmoji(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const v6, 0xd83c

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    move v0, v3

    move-object v2, p0

    :goto_0
    if-ge v0, v1, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_4

    const v5, 0xd83e

    if-gt v4, v5, :cond_4

    if-ne v4, v6, :cond_3

    add-int/lit8 v4, v1, -0x1

    if-ge v0, v4, :cond_3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v5, 0xde2f

    if-eq v4, v5, :cond_0

    const v5, 0xdc04

    if-eq v4, v5, :cond_0

    const v5, 0xde1a

    if-eq v4, v5, :cond_0

    const v5, 0xdd7f

    if-ne v4, v5, :cond_2

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, v0, 0x2

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\ufe0f"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v0, 0x2

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x2

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/16 v5, 0x20e3

    if-ne v4, v5, :cond_6

    :cond_5
    return-object v2

    :cond_6
    const/16 v5, 0x203c

    if-lt v4, v5, :cond_1

    const/16 v5, 0x3299

    if-gt v4, v5, :cond_1

    sget-object v5, Lorg/telegram/messenger/EmojiData;->emojiToFE0FMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\ufe0f"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getEmojiBigDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v3, 0x0

    invoke-static {p0}, Lorg/telegram/messenger/Emoji;->getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget v1, Lorg/telegram/messenger/Emoji;->bigImgSize:I

    sget v2, Lorg/telegram/messenger/Emoji;->bigImgSize:I

    invoke-virtual {v0, v3, v3, v1, v2}, Lorg/telegram/messenger/Emoji$EmojiDrawable;->setBounds(IIII)V

    const/4 v1, 0x1

    # setter for: Lorg/telegram/messenger/Emoji$EmojiDrawable;->fullSize:Z
    invoke-static {v0, v1}, Lorg/telegram/messenger/Emoji$EmojiDrawable;->access$102(Lorg/telegram/messenger/Emoji$EmojiDrawable;Z)Z

    goto :goto_0
.end method

.method public static getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lorg/telegram/messenger/Emoji;->rects:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/Emoji$DrawableInfo;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "No drawable for emoji "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lorg/telegram/messenger/Emoji$EmojiDrawable;

    invoke-direct {v1, v0}, Lorg/telegram/messenger/Emoji$EmojiDrawable;-><init>(Lorg/telegram/messenger/Emoji$DrawableInfo;)V

    sget v0, Lorg/telegram/messenger/Emoji;->drawImgSize:I

    sget v2, Lorg/telegram/messenger/Emoji;->drawImgSize:I

    invoke-virtual {v1, v3, v3, v0, v2}, Lorg/telegram/messenger/Emoji$EmojiDrawable;->setBounds(IIII)V

    move-object v0, v1

    goto :goto_0
.end method

.method private static inArray(C[C)Z
    .locals 4

    const/4 v0, 0x0

    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-char v3, p1, v1

    if-ne v3, p0, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static invalidateAll(Landroid/view/View;)V
    .locals 2

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/Emoji;->invalidateAll(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method private static loadEmoji(II)V
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    :try_start_0
    sget v3, Lorg/telegram/messenger/AndroidUtilities;->density:F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_2

    move v1, v2

    :goto_0
    const/4 v2, 0x4

    :goto_1
    const/4 v3, 0x7

    if-ge v2, v3, :cond_5

    :try_start_1
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "v%d_emoji%.01fx_%d.jpg"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "v%d_emoji%.01fx_a_%d.jpg"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :try_start_2
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v3, 0x3fc00000    # 1.5f

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_3

    move v0, v1

    move v1, v2

    goto :goto_0

    :cond_3
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_4

    move v0, v1

    move v1, v2

    goto :goto_0

    :cond_4
    move v0, v1

    move v1, v2

    goto :goto_0

    :cond_5
    const/16 v2, 0x8

    :goto_2
    const/16 v3, 0xb

    if-ge v2, v3, :cond_7

    :try_start_3
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "v%d_emoji%.01fx_%d.png"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_4
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_7
    const/4 v2, 0x0

    :try_start_5
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "emoji/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v6, "v11_emoji%.01fx_%d_%d.png"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v7, v8

    const/4 v1, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    const/4 v1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x0

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v0, 0x0

    invoke-static {v3, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v1

    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    :goto_3
    :try_start_7
    new-instance v0, Lorg/telegram/messenger/Emoji$1;

    invoke-direct {v0, p0, p1, v1}, Lorg/telegram/messenger/Emoji$1;-><init>(IILandroid/graphics/Bitmap;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :goto_4
    return-void

    :catch_1
    move-exception v0

    move-object v1, v2

    :goto_5
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    const-string/jumbo v1, "Error loading emoji"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_5
.end method

.method public static replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ[I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ[I)Ljava/lang/CharSequence;
    .locals 21

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/messenger/MessagesController;->useSystemEmoji:Z

    if-nez v2, :cond_0

    if-eqz p0, :cond_0

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-nez p3, :cond_6

    move-object/from16 v0, p0

    instance-of v2, v0, Landroid/text/Spannable;

    if-eqz v2, :cond_6

    move-object/from16 v2, p0

    check-cast v2, Landroid/text/Spannable;

    :goto_1
    const-wide/16 v10, 0x0

    const/4 v9, 0x0

    const/4 v6, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v14, Ljava/lang/StringBuilder;

    const/16 v3, 0x10

    invoke-direct {v14, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v7, 0x2

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v15

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object/from16 v8, p4

    :goto_2
    if-ge v7, v15, :cond_15

    :try_start_0
    move-object/from16 v0, p0

    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    const v13, 0xd83c

    if-lt v12, v13, :cond_2

    const v13, 0xd83e

    if-le v12, v13, :cond_3

    :cond_2
    const-wide/16 v16, 0x0

    cmp-long v13, v10, v16

    if-eqz v13, :cond_7

    const-wide v16, -0x100000000L

    and-long v16, v16, v10

    const-wide/16 v18, 0x0

    cmp-long v13, v16, v18

    if-nez v13, :cond_7

    const-wide/32 v16, 0xffff

    and-long v16, v16, v10

    const-wide/32 v18, 0xd83c

    cmp-long v13, v16, v18

    if-nez v13, :cond_7

    const v13, 0xdde6

    if-lt v12, v13, :cond_7

    const v13, 0xddff

    if-gt v12, v13, :cond_7

    :cond_3
    const/4 v5, -0x1

    if-ne v6, v5, :cond_4

    move v6, v7

    :cond_4
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0x10

    shl-long/2addr v10, v5

    int-to-long v12, v12

    or-long/2addr v10, v12

    move-wide v12, v10

    move-object v11, v8

    move v8, v6

    move v6, v3

    move v3, v4

    :goto_3
    if-eqz v6, :cond_1a

    add-int/lit8 v4, v7, 0x2

    if-ge v4, v15, :cond_1a

    add-int/lit8 v4, v7, 0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const v5, 0xd83c

    if-ne v4, v5, :cond_1a

    add-int/lit8 v4, v7, 0x2

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const v5, 0xdffb

    if-lt v4, v5, :cond_1a

    const v5, 0xdfff

    if-gt v4, v5, :cond_1a

    add-int/lit8 v4, v7, 0x1

    add-int/lit8 v5, v7, 0x3

    move-object/from16 v0, p0

    invoke-interface {v0, v4, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v3, 0x2

    add-int/lit8 v3, v7, 0x2

    :goto_4
    const/4 v5, 0x0

    move v7, v5

    move v5, v6

    move v6, v4

    move v4, v3

    :goto_5
    const/4 v10, 0x3

    if-ge v7, v10, :cond_13

    add-int/lit8 v10, v4, 0x1

    if-ge v10, v15, :cond_5

    add-int/lit8 v10, v4, 0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v7, v0, :cond_12

    const/16 v16, 0x200d

    move/from16 v0, v16

    if-ne v10, v0, :cond_5

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    if-lez v16, :cond_5

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v6, v6, 0x1

    const/4 v5, 0x0

    :cond_5
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_6
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v2

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v2

    goto/16 :goto_1

    :cond_7
    :try_start_1
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-lez v13, :cond_9

    const/16 v13, 0x2640

    if-eq v12, v13, :cond_8

    const/16 v13, 0x2642

    if-eq v12, v13, :cond_8

    const/16 v13, 0x2695

    if-ne v12, v13, :cond_9

    :cond_8
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    const-wide/16 v10, 0x0

    const/4 v3, 0x1

    move-wide v12, v10

    move-object v11, v8

    move v8, v6

    move v6, v3

    move v3, v4

    goto/16 :goto_3

    :cond_9
    const-wide/16 v16, 0x0

    cmp-long v13, v10, v16

    if-lez v13, :cond_a

    const v13, 0xf000

    and-int/2addr v13, v12

    const v16, 0xd000

    move/from16 v0, v16

    if-ne v13, v0, :cond_a

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    const-wide/16 v10, 0x0

    const/4 v3, 0x1

    move-wide v12, v10

    move-object v11, v8

    move v8, v6

    move v6, v3

    move v3, v4

    goto/16 :goto_3

    :cond_a
    const/16 v13, 0x20e3

    if-ne v12, v13, :cond_d

    if-lez v7, :cond_1b

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    const/16 v16, 0x30

    move/from16 v0, v16

    if-lt v13, v0, :cond_b

    const/16 v16, 0x39

    move/from16 v0, v16

    if-le v13, v0, :cond_c

    :cond_b
    const/16 v16, 0x23

    move/from16 v0, v16

    if-eq v13, v0, :cond_c

    const/16 v16, 0x2a

    move/from16 v0, v16

    if-ne v13, v0, :cond_1c

    :cond_c
    sub-int v3, v7, v5

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    :goto_7
    move v6, v3

    move-wide v12, v10

    move v3, v4

    move-object v11, v8

    move v8, v5

    goto/16 :goto_3

    :cond_d
    const/16 v5, 0xa9

    if-eq v12, v5, :cond_e

    const/16 v5, 0xae

    if-eq v12, v5, :cond_e

    const/16 v5, 0x203c

    if-lt v12, v5, :cond_10

    const/16 v5, 0x3299

    if-gt v12, v5, :cond_10

    :cond_e
    sget-object v5, Lorg/telegram/messenger/EmojiData;->dataCharsMap:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    const/4 v3, -0x1

    if-ne v6, v3, :cond_f

    move v6, v7

    :cond_f
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    move-wide v12, v10

    move-object v11, v8

    move v8, v6

    move v6, v3

    move v3, v4

    goto/16 :goto_3

    :cond_10
    const/4 v5, -0x1

    if-eq v6, v5, :cond_11

    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v6, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    move-wide v12, v10

    move-object v11, v8

    move v8, v6

    move v6, v3

    move v3, v4

    goto/16 :goto_3

    :cond_11
    const v5, 0xfe0f

    if-eq v12, v5, :cond_1b

    if-eqz v8, :cond_1b

    const/4 v5, 0x0

    const/4 v12, 0x0

    aput v12, v8, v5

    const/4 v5, 0x0

    move v8, v6

    move-wide v12, v10

    move v6, v3

    move-object v11, v5

    move v3, v4

    goto/16 :goto_3

    :cond_12
    const v16, 0xfe00

    move/from16 v0, v16

    if-lt v10, v0, :cond_5

    const v16, 0xfe0f

    move/from16 v0, v16

    if-gt v10, v0, :cond_5

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_6

    :cond_13
    if-eqz v5, :cond_19

    add-int/lit8 v7, v4, 0x2

    if-ge v7, v15, :cond_19

    add-int/lit8 v7, v4, 0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const v10, 0xd83c

    if-ne v7, v10, :cond_19

    add-int/lit8 v7, v4, 0x2

    move-object/from16 v0, p0

    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const v10, 0xdffb

    if-lt v7, v10, :cond_19

    const v10, 0xdfff

    if-gt v7, v10, :cond_19

    add-int/lit8 v7, v4, 0x1

    add-int/lit8 v10, v4, 0x3

    move-object/from16 v0, p0

    invoke-interface {v0, v7, v10}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x2

    add-int/lit8 v4, v4, 0x2

    move v10, v4

    move v4, v6

    :goto_8
    if-eqz v5, :cond_18

    if-eqz v11, :cond_14

    const/4 v5, 0x0

    aget v6, v11, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v11, v5

    :cond_14
    const/4 v5, 0x0

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v14, v5, v6}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/Emoji;->getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;

    move-result-object v5

    if-eqz v5, :cond_17

    new-instance v6, Lorg/telegram/messenger/Emoji$EmojiSpan;

    const/4 v7, 0x0

    move/from16 v0, p2

    move-object/from16 v1, p1

    invoke-direct {v6, v5, v7, v0, v1}, Lorg/telegram/messenger/Emoji$EmojiSpan;-><init>(Lorg/telegram/messenger/Emoji$EmojiDrawable;IILandroid/graphics/Paint$FontMetricsInt;)V

    add-int/2addr v4, v8

    const/16 v5, 0x21

    invoke-interface {v2, v6, v8, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v7, v9, 0x1

    :goto_9
    const/4 v4, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v5, 0x0

    :goto_a
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v9, 0x17

    if-ge v8, v9, :cond_16

    const/16 v8, 0x32

    if-lt v7, v8, :cond_16

    :cond_15
    move-object/from16 p0, v2

    goto/16 :goto_0

    :cond_16
    add-int/lit8 v8, v10, 0x1

    move v9, v7

    move v7, v8

    move-object v8, v11

    move-wide v10, v12

    move/from16 v20, v5

    move v5, v3

    move/from16 v3, v20

    goto/16 :goto_2

    :catch_0
    move-exception v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_17
    move v7, v9

    goto :goto_9

    :cond_18
    move v6, v8

    move v7, v9

    goto :goto_a

    :cond_19
    move v10, v4

    move v4, v6

    goto :goto_8

    :cond_1a
    move v4, v3

    move v3, v7

    goto/16 :goto_4

    :cond_1b
    move-wide v12, v10

    move-object v11, v8

    move v8, v6

    move v6, v3

    move v3, v4

    goto/16 :goto_3

    :cond_1c
    move v5, v6

    goto/16 :goto_7
.end method
