.class public Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;
.super Ljava/lang/Object;
.source "PhotoFilterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/PhotoFilterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CurvesValue"
.end annotation


# instance fields
.field public blacksLevel:F

.field public cachedDataPoints:[F

.field public highlightsLevel:F

.field public midtonesLevel:F

.field public previousBlacksLevel:F

.field public previousHighlightsLevel:F

.field public previousMidtonesLevel:F

.field public previousShadowsLevel:F

.field public previousWhitesLevel:F

.field public shadowsLevel:F

.field public whitesLevel:F


# direct methods
.method public constructor <init>()V
    .locals 5

    const/high16 v4, 0x42c80000    # 100.0f

    const/high16 v3, 0x42960000    # 75.0f

    const/high16 v2, 0x42480000    # 50.0f

    const/high16 v1, 0x41c80000    # 25.0f

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->blacksLevel:F

    iput v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->shadowsLevel:F

    iput v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->midtonesLevel:F

    iput v3, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->highlightsLevel:F

    iput v4, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->whitesLevel:F

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->previousBlacksLevel:F

    iput v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->previousShadowsLevel:F

    iput v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->previousMidtonesLevel:F

    iput v3, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->previousHighlightsLevel:F

    iput v4, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->previousWhitesLevel:F

    return-void
.end method


# virtual methods
.method public getDataPoints()[F
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->cachedDataPoints:[F

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->interpolateCurve()[F

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->cachedDataPoints:[F

    return-object v0
.end method

.method public interpolateCurve()[F
    .locals 21

    const/16 v1, 0xe

    new-array v3, v1, [F

    const/4 v1, 0x0

    const v2, -0x457ced91    # -0.001f

    aput v2, v3, v1

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->blacksLevel:F

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v2, v4

    aput v2, v3, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v2, v3, v1

    const/4 v1, 0x3

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->blacksLevel:F

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v2, v4

    aput v2, v3, v1

    const/4 v1, 0x4

    const/high16 v2, 0x3e800000    # 0.25f

    aput v2, v3, v1

    const/4 v1, 0x5

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->shadowsLevel:F

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v2, v4

    aput v2, v3, v1

    const/4 v1, 0x6

    const/high16 v2, 0x3f000000    # 0.5f

    aput v2, v3, v1

    const/4 v1, 0x7

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->midtonesLevel:F

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v2, v4

    aput v2, v3, v1

    const/16 v1, 0x8

    const/high16 v2, 0x3f400000    # 0.75f

    aput v2, v3, v1

    const/16 v1, 0x9

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->highlightsLevel:F

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v2, v4

    aput v2, v3, v1

    const/16 v1, 0xa

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v3, v1

    const/16 v1, 0xb

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->whitesLevel:F

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v2, v4

    aput v2, v3, v1

    const/16 v1, 0xc

    const v2, 0x3f8020c5    # 1.001f

    aput v2, v3, v1

    const/16 v1, 0xd

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->whitesLevel:F

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v2, v4

    aput v2, v3, v1

    new-instance v4, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    aget v1, v3, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    aget v1, v3, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    :goto_0
    array-length v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, -0x2

    if-ge v1, v2, :cond_3

    add-int/lit8 v2, v1, -0x1

    mul-int/lit8 v2, v2, 0x2

    aget v6, v3, v2

    add-int/lit8 v2, v1, -0x1

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v7, v3, v2

    mul-int/lit8 v2, v1, 0x2

    aget v8, v3, v2

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v9, v3, v2

    add-int/lit8 v2, v1, 0x1

    mul-int/lit8 v2, v2, 0x2

    aget v10, v3, v2

    add-int/lit8 v2, v1, 0x1

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v11, v3, v2

    add-int/lit8 v2, v1, 0x2

    mul-int/lit8 v2, v2, 0x2

    aget v12, v3, v2

    add-int/lit8 v2, v1, 0x2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v13, v3, v2

    const/4 v2, 0x1

    :goto_1
    const/16 v14, 0x64

    if-ge v2, v14, :cond_2

    int-to-float v14, v2

    const v15, 0x3c23d70a    # 0.01f

    mul-float/2addr v14, v15

    mul-float v15, v14, v14

    mul-float v16, v15, v14

    const/high16 v17, 0x3f000000    # 0.5f

    const/high16 v18, 0x40000000    # 2.0f

    mul-float v18, v18, v8

    sub-float v19, v10, v6

    mul-float v19, v19, v14

    add-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    mul-float v19, v19, v6

    const/high16 v20, 0x40a00000    # 5.0f

    mul-float v20, v20, v8

    sub-float v19, v19, v20

    const/high16 v20, 0x40800000    # 4.0f

    mul-float v20, v20, v10

    add-float v19, v19, v20

    sub-float v19, v19, v12

    mul-float v19, v19, v15

    add-float v18, v18, v19

    const/high16 v19, 0x40400000    # 3.0f

    mul-float v19, v19, v8

    sub-float v19, v19, v6

    const/high16 v20, 0x40400000    # 3.0f

    mul-float v20, v20, v10

    sub-float v19, v19, v20

    add-float v19, v19, v12

    mul-float v19, v19, v16

    add-float v18, v18, v19

    mul-float v17, v17, v18

    const/high16 v18, 0x3f000000    # 0.5f

    const/high16 v19, 0x40000000    # 2.0f

    mul-float v19, v19, v9

    sub-float v20, v11, v7

    mul-float v14, v14, v20

    add-float v14, v14, v19

    const/high16 v19, 0x40000000    # 2.0f

    mul-float v19, v19, v7

    const/high16 v20, 0x40a00000    # 5.0f

    mul-float v20, v20, v9

    sub-float v19, v19, v20

    const/high16 v20, 0x40800000    # 4.0f

    mul-float v20, v20, v11

    add-float v19, v19, v20

    sub-float v19, v19, v13

    mul-float v15, v15, v19

    add-float/2addr v14, v15

    const/high16 v15, 0x40400000    # 3.0f

    mul-float/2addr v15, v9

    sub-float/2addr v15, v7

    const/high16 v19, 0x40400000    # 3.0f

    mul-float v19, v19, v11

    sub-float v15, v15, v19

    add-float/2addr v15, v13

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    mul-float v14, v14, v18

    const/4 v15, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    move/from16 v0, v16

    invoke-static {v0, v14}, Ljava/lang/Math;->min(FF)F

    move-result v14

    invoke-static {v15, v14}, Ljava/lang/Math;->max(FF)F

    move-result v14

    cmpl-float v15, v17, v6

    if-lez v15, :cond_0

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v15, v2, -0x1

    rem-int/lit8 v15, v15, 0x2

    if-nez v15, :cond_1

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_2
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0xc

    aget v1, v3, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0xd

    aget v1, v3, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [F

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->cachedDataPoints:[F

    const/4 v1, 0x0

    move v2, v1

    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->cachedDataPoints:[F

    array-length v1, v1

    if-ge v2, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->cachedDataPoints:[F

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    aput v1, v3, v2

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v3, v1, [F

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    array-length v1, v3

    if-ge v2, v1, :cond_5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    aput v1, v3, v2

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    :cond_5
    return-object v3
.end method

.method public isDefault()Z
    .locals 4

    const-wide v2, 0x3ee4f8b588e368f1L    # 1.0E-5

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->blacksLevel:F

    const/4 v1, 0x0

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->shadowsLevel:F

    const/high16 v1, 0x41c80000    # 25.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->midtonesLevel:F

    const/high16 v1, 0x42480000    # 50.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->highlightsLevel:F

    const/high16 v1, 0x42960000    # 75.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->whitesLevel:F

    const/high16 v1, 0x42c80000    # 100.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreValues()V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->previousBlacksLevel:F

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->blacksLevel:F

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->previousShadowsLevel:F

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->shadowsLevel:F

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->previousMidtonesLevel:F

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->midtonesLevel:F

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->previousHighlightsLevel:F

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->highlightsLevel:F

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->previousWhitesLevel:F

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->whitesLevel:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->interpolateCurve()[F

    return-void
.end method

.method public saveValues()V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->blacksLevel:F

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->previousBlacksLevel:F

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->shadowsLevel:F

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->previousShadowsLevel:F

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->midtonesLevel:F

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->previousMidtonesLevel:F

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->highlightsLevel:F

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->previousHighlightsLevel:F

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->whitesLevel:F

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->previousWhitesLevel:F

    return-void
.end method
