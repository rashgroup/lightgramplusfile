.class public Lnet/hockeyapp/android/views/PaintView;
.super Landroid/widget/ImageView;
.source "PaintView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field private static final TOUCH_TOLERANCE:F = 4.0f


# instance fields
.field private mX:F

.field private mY:F

.field private paint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private paths:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;II)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->path:Landroid/graphics/Path;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->paths:Ljava/util/Stack;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->paint:Landroid/graphics/Paint;

    iget-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->paint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Lnet/hockeyapp/android/views/PaintView$1;

    invoke-direct {v0, p0}, Lnet/hockeyapp/android/views/PaintView$1;-><init>(Lnet/hockeyapp/android/views/PaintView;)V

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/views/PaintView$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic access$000(Landroid/content/ContentResolver;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lnet/hockeyapp/android/views/PaintView;->decodeSampledBitmapFromResource(Landroid/content/ContentResolver;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 4

    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v0, 0x1

    if-gt v1, p2, :cond_0

    if-le v2, p1, :cond_1

    :cond_0
    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v2, v2, 0x2

    :goto_0
    div-int v3, v1, v0

    if-le v3, p2, :cond_1

    div-int v3, v2, v0

    if-le v3, p1, :cond_1

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static decodeSampledBitmapFromResource(Landroid/content/ContentResolver;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-static {v0, p2, p3}, Lnet/hockeyapp/android/views/PaintView;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static determineOrientation(Landroid/content/ContentResolver;Landroid/net/Uri;)I
    .locals 4

    const/4 v0, 0x1

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v1, v1

    div-float v1, v2, v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "Unable to determine necessary screen orientation."

    invoke-static {v2, v1}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private touchMove(FF)V
    .locals 6

    const/high16 v2, 0x40800000    # 4.0f

    const/high16 v5, 0x40000000    # 2.0f

    iget v0, p0, Lnet/hockeyapp/android/views/PaintView;->mX:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lnet/hockeyapp/android/views/PaintView;->mY:F

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v2

    if-gez v0, :cond_0

    cmpl-float v0, v1, v2

    if-ltz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->path:Landroid/graphics/Path;

    iget v1, p0, Lnet/hockeyapp/android/views/PaintView;->mX:F

    iget v2, p0, Lnet/hockeyapp/android/views/PaintView;->mY:F

    iget v3, p0, Lnet/hockeyapp/android/views/PaintView;->mX:F

    add-float/2addr v3, p1

    div-float/2addr v3, v5

    iget v4, p0, Lnet/hockeyapp/android/views/PaintView;->mY:F

    add-float/2addr v4, p2

    div-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    iput p1, p0, Lnet/hockeyapp/android/views/PaintView;->mX:F

    iput p2, p0, Lnet/hockeyapp/android/views/PaintView;->mY:F

    :cond_1
    return-void
.end method

.method private touchStart(FF)V
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->path:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    iput p1, p0, Lnet/hockeyapp/android/views/PaintView;->mX:F

    iput p2, p0, Lnet/hockeyapp/android/views/PaintView;->mY:F

    return-void
.end method

.method private touchUp()V
    .locals 3

    iget-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->path:Landroid/graphics/Path;

    iget v1, p0, Lnet/hockeyapp/android/views/PaintView;->mX:F

    iget v2, p0, Lnet/hockeyapp/android/views/PaintView;->mY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->paths:Ljava/util/Stack;

    iget-object v1, p0, Lnet/hockeyapp/android/views/PaintView;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->path:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public clearImage()V
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->paths:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/PaintView;->invalidate()V

    return-void
.end method

.method public isClear()Z
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->paths:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->paths:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    iget-object v2, p0, Lnet/hockeyapp/android/views/PaintView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lnet/hockeyapp/android/views/PaintView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    invoke-direct {p0, v0, v1}, Lnet/hockeyapp/android/views/PaintView;->touchStart(FF)V

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/PaintView;->invalidate()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v0, v1}, Lnet/hockeyapp/android/views/PaintView;->touchMove(FF)V

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/PaintView;->invalidate()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lnet/hockeyapp/android/views/PaintView;->touchUp()V

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/PaintView;->invalidate()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public undo()V
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->paths:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->paths:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/PaintView;->invalidate()V

    :cond_0
    return-void
.end method
