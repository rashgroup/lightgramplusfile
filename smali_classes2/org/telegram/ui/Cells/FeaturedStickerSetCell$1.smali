.class Lorg/telegram/ui/Cells/FeaturedStickerSetCell$1;
.super Landroid/widget/TextView;
.source "FeaturedStickerSetCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/FeaturedStickerSetCell;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/FeaturedStickerSetCell;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell$1;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetCell;

    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    const/high16 v9, 0x43480000    # 200.0f

    const/high16 v5, 0x41300000    # 11.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x0

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell$1;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetCell;

    # getter for: Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->drawProgress:Z
    invoke-static {v0}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->access$000(Lorg/telegram/ui/Cells/FeaturedStickerSetCell;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell$1;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetCell;

    # getter for: Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->drawProgress:Z
    invoke-static {v0}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->access$000(Lorg/telegram/ui/Cells/FeaturedStickerSetCell;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell$1;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetCell;

    # getter for: Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->progressAlpha:F
    invoke-static {v0}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->access$100(Lorg/telegram/ui/Cells/FeaturedStickerSetCell;)F

    move-result v0

    cmpl-float v0, v0, v7

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell$1;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetCell;

    # getter for: Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->progressPaint:Landroid/graphics/Paint;
    invoke-static {v0}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->access$200(Lorg/telegram/ui/Cells/FeaturedStickerSetCell;)Landroid/graphics/Paint;

    move-result-object v0

    const/16 v1, 0xff

    iget-object v2, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell$1;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetCell;

    # getter for: Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->progressAlpha:F
    invoke-static {v2}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->access$100(Lorg/telegram/ui/Cells/FeaturedStickerSetCell;)F

    move-result v2

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell$1;->getMeasuredWidth()I

    move-result v0

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell$1;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetCell;

    # getter for: Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->progressRect:Landroid/graphics/RectF;
    invoke-static {v1}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->access$300(Lorg/telegram/ui/Cells/FeaturedStickerSetCell;)Landroid/graphics/RectF;

    move-result-object v1

    int-to-float v2, v0

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v0, v0

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell$1;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetCell;

    # getter for: Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->progressRect:Landroid/graphics/RectF;
    invoke-static {v0}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->access$300(Lorg/telegram/ui/Cells/FeaturedStickerSetCell;)Landroid/graphics/RectF;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell$1;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetCell;

    # getter for: Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->angle:I
    invoke-static {v0}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->access$400(Lorg/telegram/ui/Cells/FeaturedStickerSetCell;)I

    move-result v0

    int-to-float v2, v0

    const/high16 v3, 0x435c0000    # 220.0f

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell$1;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetCell;

    # getter for: Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->progressPaint:Landroid/graphics/Paint;
    invoke-static {v0}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->access$200(Lorg/telegram/ui/Cells/FeaturedStickerSetCell;)Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell$1;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetCell;

    # getter for: Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->progressRect:Landroid/graphics/RectF;
    invoke-static {v0}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->access$300(Lorg/telegram/ui/Cells/FeaturedStickerSetCell;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell$1;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetCell;

    # getter for: Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->progressRect:Landroid/graphics/RectF;
    invoke-static {v1}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->access$300(Lorg/telegram/ui/Cells/FeaturedStickerSetCell;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell$1;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetCell;

    # getter for: Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->progressRect:Landroid/graphics/RectF;
    invoke-static {v2}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->access$300(Lorg/telegram/ui/Cells/FeaturedStickerSetCell;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell$1;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetCell;

    # getter for: Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->progressRect:Landroid/graphics/RectF;
    invoke-static {v3}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->access$300(Lorg/telegram/ui/Cells/FeaturedStickerSetCell;)Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell$1;->invalidate(IIII)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell$1;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetCell;

    # getter for: Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->lastUpdateTime:J
    invoke-static {v2}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->access$500(Lorg/telegram/ui/Cells/FeaturedStickerSetCell;)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell$1;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetCell;

    # getter for: Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->lastUpdateTime:J
    invoke-static {v2}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->access$500(Lorg/telegram/ui/Cells/FeaturedStickerSetCell;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x168

    mul-long/2addr v4, v2

    long-to-float v4, v4

    const/high16 v5, 0x44fa0000    # 2000.0f

    div-float/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell$1;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetCell;

    iget-object v6, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell$1;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetCell;

    # getter for: Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->angle:I
    invoke-static {v6}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->access$400(Lorg/telegram/ui/Cells/FeaturedStickerSetCell;)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v4, v6

    float-to-int v4, v4

    # setter for: Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->angle:I
    invoke-static {v5, v4}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->access$402(Lorg/telegram/ui/Cells/FeaturedStickerSetCell;I)I

    iget-object v4, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell$1;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetCell;

    iget-object v5, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell$1;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetCell;

    # getter for: Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->angle:I
    invoke-static {v5}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->access$400(Lorg/telegram/ui/Cells/FeaturedStickerSetCell;)I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell$1;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetCell;

    # getter for: Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->angle:I
    invoke-static {v6}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->access$400(Lorg/telegram/ui/Cells/FeaturedStickerSetCell;)I

    move-result v6

    div-int/lit16 v6, v6, 0x168

    mul-int/lit16 v6, v6, 0x168

    sub-int/2addr v5, v6

    # setter for: Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->angle:I
    invoke-static {v4, v5}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->access$402(Lorg/telegram/ui/Cells/FeaturedStickerSetCell;I)I

    iget-object v4, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell$1;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetCell;

    # getter for: Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->drawProgress:Z
    invoke-static {v4}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->access$000(Lorg/telegram/ui/Cells/FeaturedStickerSetCell;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell$1;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetCell;

    # getter for: Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->progressAlpha:F
    invoke-static {v4}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->access$100(Lorg/telegram/ui/Cells/FeaturedStickerSetCell;)F

    move-result v4

    cmpg-float v4, v4, v8

    if-gez v4, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell$1;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetCell;

    iget-object v5, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell$1;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetCell;

    # getter for: Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->progressAlpha:F
    invoke-static {v5}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->access$100(Lorg/telegram/ui/Cells/FeaturedStickerSetCell;)F

    move-result v5

    long-to-float v2, v2

    div-float/2addr v2, v9

    add-float/2addr v2, v5

    # setter for: Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->progressAlpha:F
    invoke-static {v4, v2}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->access$102(Lorg/telegram/ui/Cells/FeaturedStickerSetCell;F)F

    iget-object v2, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell$1;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetCell;

    # getter for: Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->progressAlpha:F
    invoke-static {v2}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->access$100(Lorg/telegram/ui/Cells/FeaturedStickerSetCell;)F

    move-result v2

    cmpl-float v2, v2, v8

    if-lez v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell$1;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetCell;

    # setter for: Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->progressAlpha:F
    invoke-static {v2, v8}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->access$102(Lorg/telegram/ui/Cells/FeaturedStickerSetCell;F)F

    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell$1;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetCell;

    # setter for: Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->lastUpdateTime:J
    invoke-static {v2, v0, v1}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->access$502(Lorg/telegram/ui/Cells/FeaturedStickerSetCell;J)J

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell$1;->invalidate()V

    :cond_2
    return-void

    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell$1;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetCell;

    # getter for: Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->progressAlpha:F
    invoke-static {v4}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->access$100(Lorg/telegram/ui/Cells/FeaturedStickerSetCell;)F

    move-result v4

    cmpl-float v4, v4, v7

    if-lez v4, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell$1;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetCell;

    iget-object v5, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell$1;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetCell;

    # getter for: Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->progressAlpha:F
    invoke-static {v5}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->access$100(Lorg/telegram/ui/Cells/FeaturedStickerSetCell;)F

    move-result v5

    long-to-float v2, v2

    div-float/2addr v2, v9

    sub-float v2, v5, v2

    # setter for: Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->progressAlpha:F
    invoke-static {v4, v2}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->access$102(Lorg/telegram/ui/Cells/FeaturedStickerSetCell;F)F

    iget-object v2, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell$1;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetCell;

    # getter for: Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->progressAlpha:F
    invoke-static {v2}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->access$100(Lorg/telegram/ui/Cells/FeaturedStickerSetCell;)F

    move-result v2

    cmpg-float v2, v2, v7

    if-gez v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell$1;->this$0:Lorg/telegram/ui/Cells/FeaturedStickerSetCell;

    # setter for: Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->progressAlpha:F
    invoke-static {v2, v7}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->access$102(Lorg/telegram/ui/Cells/FeaturedStickerSetCell;F)F

    goto :goto_0
.end method
