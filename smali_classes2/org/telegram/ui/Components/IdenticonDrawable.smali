.class public Lorg/telegram/ui/Components/IdenticonDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "IdenticonDrawable.java"


# instance fields
.field private colors:[I

.field private data:[B

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/IdenticonDrawable;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/telegram/ui/Components/IdenticonDrawable;->colors:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x2a190d
        -0xd2a88b
        -0xd06637
    .end array-data
.end method

.method private getBits(I)I
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/IdenticonDrawable;->data:[B

    div-int/lit8 v1, p1, 0x8

    aget-byte v0, v0, v1

    rem-int/lit8 v1, p1, 0x8

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x3

    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 13

    const/high16 v5, 0x41400000    # 12.0f

    const/high16 v4, 0x41000000    # 8.0f

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v2, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/IdenticonDrawable;->data:[B

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/IdenticonDrawable;->data:[B

    array-length v0, v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/IdenticonDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/IdenticonDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v10, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/IdenticonDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float v1, v10, v4

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v11

    invoke-virtual {p0}, Lorg/telegram/ui/Components/IdenticonDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float v1, v10, v4

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v12

    move v9, v7

    move v0, v7

    :goto_0
    const/16 v1, 0x8

    if-ge v9, v1, :cond_0

    move v6, v7

    :goto_1
    const/16 v1, 0x8

    if-ge v6, v1, :cond_2

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/IdenticonDrawable;->getBits(I)I

    move-result v1

    add-int/lit8 v8, v0, 0x2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    rem-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lorg/telegram/ui/Components/IdenticonDrawable;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Lorg/telegram/ui/Components/IdenticonDrawable;->colors:[I

    aget v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v0, v6

    mul-float/2addr v0, v10

    add-float v1, v11, v0

    int-to-float v0, v9

    mul-float/2addr v0, v10

    add-float v2, v0, v12

    int-to-float v0, v6

    mul-float/2addr v0, v10

    add-float/2addr v0, v11

    add-float v3, v0, v10

    int-to-float v0, v9

    mul-float/2addr v0, v10

    add-float/2addr v0, v10

    add-float v4, v0, v12

    iget-object v5, p0, Lorg/telegram/ui/Components/IdenticonDrawable;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v0, v8

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/IdenticonDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/IdenticonDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v5

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v10, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/IdenticonDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float v1, v10, v5

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v11

    invoke-virtual {p0}, Lorg/telegram/ui/Components/IdenticonDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float v1, v10, v5

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v12

    move v9, v7

    move v0, v7

    :goto_2
    const/16 v1, 0xc

    if-ge v9, v1, :cond_0

    move v6, v7

    move v8, v0

    :goto_3
    const/16 v0, 0xc

    if-ge v6, v0, :cond_4

    invoke-direct {p0, v8}, Lorg/telegram/ui/Components/IdenticonDrawable;->getBits(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    rem-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lorg/telegram/ui/Components/IdenticonDrawable;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Lorg/telegram/ui/Components/IdenticonDrawable;->colors:[I

    aget v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v0, v6

    mul-float/2addr v0, v10

    add-float v1, v11, v0

    int-to-float v0, v9

    mul-float/2addr v0, v10

    add-float v2, v0, v12

    int-to-float v0, v6

    mul-float/2addr v0, v10

    add-float/2addr v0, v11

    add-float v3, v0, v10

    int-to-float v0, v9

    mul-float/2addr v0, v10

    add-float/2addr v0, v10

    add-float v4, v0, v12

    iget-object v5, p0, Lorg/telegram/ui/Components/IdenticonDrawable;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v8, 0x2

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v8, v1

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    move v0, v8

    goto :goto_2
.end method

.method public getIntrinsicHeight()I
    .locals 1

    const/high16 v0, 0x42000000    # 32.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    const/high16 v0, 0x42000000    # 32.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

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

.method public setColors([I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/IdenticonDrawable;->colors:[I

    array-length v0, v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "colors must have length of 4"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/IdenticonDrawable;->colors:[I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/IdenticonDrawable;->invalidateSelf()V

    return-void
.end method

.method public setEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
    .locals 1

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    iput-object v0, p0, Lorg/telegram/ui/Components/IdenticonDrawable;->data:[B

    iget-object v0, p0, Lorg/telegram/ui/Components/IdenticonDrawable;->data:[B

    if-nez v0, :cond_0

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->calcAuthKeyHash([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/IdenticonDrawable;->data:[B

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/IdenticonDrawable;->invalidateSelf()V

    return-void
.end method
