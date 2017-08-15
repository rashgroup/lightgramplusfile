.class public Lorg/telegram/ui/Components/SeekBarWaveform;
.super Ljava/lang/Object;
.source "SeekBarWaveform.java"


# static fields
.field private static paintInner:Landroid/graphics/Paint;

.field private static paintOuter:Landroid/graphics/Paint;


# instance fields
.field private delegate:Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;

.field private height:I

.field private innerColor:I

.field private messageObject:Lorg/telegram/messenger/MessageObject;

.field private outerColor:I

.field private parentView:Landroid/view/View;

.field private pressed:Z

.field private selected:Z

.field private selectedColor:I

.field private startDraging:Z

.field private startX:F

.field private thumbDX:I

.field private thumbX:I

.field private waveformBytes:[B

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbX:I

    iput v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbDX:I

    iput-boolean v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->startDraging:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->pressed:Z

    sget-object v0, Lorg/telegram/ui/Components/SeekBarWaveform;->paintInner:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/SeekBarWaveform;->paintInner:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/SeekBarWaveform;->paintOuter:Landroid/graphics/Paint;

    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->waveformBytes:[B

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->width:I

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->width:I

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    div-int/2addr v1, v2

    int-to-float v1, v1

    const v2, 0x3dcccccd    # 0.1f

    cmpg-float v2, v1, v2

    if-lez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->waveformBytes:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x8

    div-int/lit8 v14, v2, 0x5

    int-to-float v2, v14

    div-float v15, v2, v1

    const/4 v4, 0x0

    const/4 v3, 0x0

    sget-object v2, Lorg/telegram/ui/Components/SeekBarWaveform;->paintInner:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v1

    if-nez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isContentUnread()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v1, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->outerColor:I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Lorg/telegram/ui/Components/SeekBarWaveform;->paintOuter:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->outerColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->height:I

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v16, v1, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    move v13, v1

    move v1, v3

    move v3, v4

    :goto_1
    if-ge v13, v14, :cond_0

    if-eq v13, v1, :cond_4

    move/from16 v18, v2

    move v2, v1

    move/from16 v1, v18

    :goto_2
    add-int/lit8 v4, v13, 0x1

    move v13, v4

    move/from16 v18, v1

    move v1, v2

    move/from16 v2, v18

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->selected:Z

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->selectedColor:I

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->innerColor:I

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    move v12, v4

    move v9, v1

    move v10, v3

    :goto_3
    if-ne v1, v9, :cond_5

    add-float/2addr v10, v15

    float-to-int v9, v10

    add-int/lit8 v3, v12, 0x1

    move v12, v3

    goto :goto_3

    :cond_5
    mul-int/lit8 v1, v13, 0x5

    div-int/lit8 v3, v1, 0x8

    mul-int/lit8 v4, v3, 0x8

    sub-int/2addr v1, v4

    rsub-int/lit8 v4, v1, 0x8

    rsub-int/lit8 v5, v4, 0x5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->waveformBytes:[B

    aget-byte v6, v6, v3

    shr-int v1, v6, v1

    const/4 v6, 0x2

    const/4 v7, 0x5

    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    shl-int v4, v6, v4

    add-int/lit8 v4, v4, -0x1

    and-int/2addr v1, v4

    int-to-byte v1, v1

    if-lez v5, :cond_9

    shl-int/2addr v1, v5

    int-to-byte v1, v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->waveformBytes:[B

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, v4, v3

    const/4 v4, 0x2

    add-int/lit8 v5, v5, -0x1

    shl-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    and-int/2addr v3, v4

    or-int/2addr v1, v3

    int-to-byte v1, v1

    move v7, v1

    :goto_4
    const/4 v1, 0x0

    move v11, v1

    move v8, v2

    :goto_5
    if-ge v11, v12, :cond_8

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    mul-int v17, v8, v1

    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbX:I

    move/from16 v0, v17

    if-ge v0, v1, :cond_7

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int v1, v1, v17

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbX:I

    if-ge v1, v2, :cond_7

    move/from16 v0, v17

    int-to-float v2, v0

    const/high16 v1, 0x41600000    # 14.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x41600000    # 14.0f

    int-to-float v5, v7

    mul-float/2addr v4, v5

    const/high16 v5, 0x41f80000    # 31.0f

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    sub-float/2addr v1, v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int v1, v1, v16

    int-to-float v3, v1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int v1, v1, v17

    int-to-float v4, v1

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int v1, v1, v16

    int-to-float v5, v1

    sget-object v6, Lorg/telegram/ui/Components/SeekBarWaveform;->paintOuter:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_6
    :goto_6
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto :goto_5

    :cond_7
    move/from16 v0, v17

    int-to-float v2, v0

    const/high16 v1, 0x41600000    # 14.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x41600000    # 14.0f

    int-to-float v5, v7

    mul-float/2addr v4, v5

    const/high16 v5, 0x41f80000    # 31.0f

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    sub-float/2addr v1, v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int v1, v1, v16

    int-to-float v3, v1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int v1, v1, v17

    int-to-float v4, v1

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int v1, v1, v16

    int-to-float v5, v1

    sget-object v6, Lorg/telegram/ui/Components/SeekBarWaveform;->paintInner:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbX:I

    move/from16 v0, v17

    if-ge v0, v1, :cond_6

    move/from16 v0, v17

    int-to-float v2, v0

    const/high16 v1, 0x41600000    # 14.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x41600000    # 14.0f

    int-to-float v5, v7

    mul-float/2addr v4, v5

    const/high16 v5, 0x41f80000    # 31.0f

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    sub-float/2addr v1, v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int v1, v1, v16

    int-to-float v3, v1

    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbX:I

    int-to-float v4, v1

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int v1, v1, v16

    int-to-float v5, v1

    sget-object v6, Lorg/telegram/ui/Components/SeekBarWaveform;->paintOuter:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_6

    :cond_8
    move v1, v8

    move v2, v9

    move v3, v10

    goto/16 :goto_2

    :cond_9
    move v7, v1

    goto/16 :goto_4
.end method

.method public isDragging()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->pressed:Z

    return v0
.end method

.method public isStartDraging()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->startDraging:Z

    return v0
.end method

.method public onTouch(IFF)Z
    .locals 5

    const/4 v4, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_1

    cmpg-float v2, v4, p2

    if-gtz v2, :cond_8

    iget v2, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->width:I

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_8

    cmpl-float v2, p3, v4

    if-ltz v2, :cond_8

    iget v2, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->height:I

    int-to-float v2, v2

    cmpg-float v2, p3, v2

    if-gtz v2, :cond_8

    iput p2, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->startX:F

    iput-boolean v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->pressed:Z

    iget v2, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbX:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    float-to-int v2, v2

    iput v2, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbDX:I

    iput-boolean v1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->startDraging:Z

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eq p1, v0, :cond_2

    const/4 v2, 0x3

    if-ne p1, v2, :cond_4

    :cond_2
    iget-boolean v2, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->pressed:Z

    if-eqz v2, :cond_8

    if-ne p1, v0, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->delegate:Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->delegate:Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;

    iget v3, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbX:I

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->width:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-interface {v2, v3}, Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;->onSeekBarDrag(F)V

    :cond_3
    iput-boolean v1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->pressed:Z

    goto :goto_0

    :cond_4
    const/4 v2, 0x2

    if-ne p1, v2, :cond_8

    iget-boolean v2, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->pressed:Z

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->startDraging:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbDX:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    float-to-int v2, v2

    iput v2, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbX:I

    iget v2, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbX:I

    if-gez v2, :cond_7

    iput v1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbX:I

    :cond_5
    :goto_1
    iget v1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->startX:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->startX:F

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3e4ccccd    # 0.2f

    invoke-static {v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->parentView:Landroid/view/View;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->parentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->parentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_6
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->startDraging:Z

    iput v3, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->startX:F

    goto :goto_0

    :cond_7
    iget v1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbX:I

    iget v2, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->width:I

    if-le v1, v2, :cond_5

    iget v1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->width:I

    iput v1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbX:I

    goto :goto_1

    :cond_8
    move v0, v1

    goto :goto_0
.end method

.method public setColors(III)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->innerColor:I

    iput p2, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->outerColor:I

    iput p3, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->selectedColor:I

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->delegate:Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;

    return-void
.end method

.method public setMessageObject(Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->messageObject:Lorg/telegram/messenger/MessageObject;

    return-void
.end method

.method public setParentView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->parentView:Landroid/view/View;

    return-void
.end method

.method public setProgress(F)V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->width:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbX:I

    iget v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbX:I

    if-gez v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbX:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbX:I

    iget v1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->width:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->width:I

    iput v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbX:I

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->selected:Z

    return-void
.end method

.method public setSize(II)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->width:I

    iput p2, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->height:I

    return-void
.end method

.method public setWaveform([B)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->waveformBytes:[B

    return-void
.end method
