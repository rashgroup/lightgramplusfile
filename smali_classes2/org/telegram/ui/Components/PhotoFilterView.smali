.class public Lorg/telegram/ui/Components/PhotoFilterView;
.super Landroid/widget/FrameLayout;
.source "PhotoFilterView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;,
        Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;,
        Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;,
        Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;
    }
.end annotation


# static fields
.field private static final curveDataStep:I = 0x2

.field private static final curveGranularity:I = 0x64


# instance fields
.field private bitmapToEdit:Landroid/graphics/Bitmap;

.field private blurAngle:F

.field private blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

.field private blurExcludeBlurSize:F

.field private blurExcludePoint:Lorg/telegram/ui/Components/Point;

.field private blurExcludeSize:F

.field private blurLayout:Landroid/widget/FrameLayout;

.field private blurLinearButton:Landroid/widget/TextView;

.field private blurOffButton:Landroid/widget/TextView;

.field private blurRadialButton:Landroid/widget/TextView;

.field private blurTool:I

.field private blurType:I

.field private cancelTextView:Landroid/widget/TextView;

.field private contrastTool:I

.field private contrastValue:F

.field private curveLayout:Landroid/widget/FrameLayout;

.field private curveTextView:[Landroid/widget/TextView;

.field private curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

.field private curvesTool:I

.field private curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

.field private doneTextView:Landroid/widget/TextView;

.field private editView:Landroid/widget/FrameLayout;

.field private eglThread:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

.field private enhanceTool:I

.field private enhanceValue:F

.field private exposureTool:I

.field private exposureValue:F

.field private fadeTool:I

.field private fadeValue:F

.field private grainTool:I

.field private grainValue:F

.field private highlightsTool:I

.field private highlightsValue:F

.field private infoTextView:Landroid/widget/TextView;

.field private orientation:I

.field private paramTextView:Landroid/widget/TextView;

.field private previousValue:F

.field private previousValueInt:I

.field private previousValueInt2:I

.field private recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

.field private saturationTool:I

.field private saturationValue:F

.field private selectedTintMode:I

.field private selectedTool:I

.field private shadowsTool:I

.field private shadowsValue:F

.field private sharpenTool:I

.field private sharpenValue:F

.field private showOriginal:Z

.field private textureView:Landroid/view/TextureView;

.field private tintButtonsContainer:Landroid/widget/LinearLayout;

.field private final tintHighlighsColors:[I

.field private tintHighlightsButton:Landroid/widget/TextView;

.field private tintHighlightsColor:I

.field private tintLayout:Landroid/widget/FrameLayout;

.field private final tintShadowColors:[I

.field private tintShadowsButton:Landroid/widget/TextView;

.field private tintShadowsColor:I

.field private tintTool:I

.field private toolCellWidth:I

.field private toolsAdapter:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

.field private toolsView:Landroid/widget/FrameLayout;

.field private valueSeekBar:Lorg/telegram/ui/Components/PhotoEditorSeekBar;

.field private valueTextView:Landroid/widget/TextView;

.field private vignetteTool:I

.field private vignetteValue:F

.field private warmthTool:I

.field private warmthValue:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V
    .locals 9

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowColors:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlighsColors:[I

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceTool:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->exposureTool:I

    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->contrastTool:I

    const/4 v0, 0x3

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->warmthTool:I

    const/4 v0, 0x4

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->saturationTool:I

    const/4 v0, 0x5

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintTool:I

    const/4 v0, 0x6

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->fadeTool:I

    const/4 v0, 0x7

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->highlightsTool:I

    const/16 v0, 0x8

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->shadowsTool:I

    const/16 v0, 0x9

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->vignetteTool:I

    const/16 v0, 0xa

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->grainTool:I

    const/16 v0, 0xb

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurTool:I

    const/16 v0, 0xc

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->sharpenTool:I

    const/16 v0, 0xd

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesTool:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceValue:F

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->exposureValue:F

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->contrastValue:F

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->warmthValue:F

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->saturationValue:F

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->fadeValue:F

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsColor:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsColor:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->highlightsValue:F

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->shadowsValue:F

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->vignetteValue:F

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->grainValue:F

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurType:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->sharpenValue:F

    new-instance v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    invoke-direct {v0}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    const v0, 0x3eb33333    # 0.35f

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludeSize:F

    new-instance v0, Lorg/telegram/ui/Components/Point;

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludePoint:Lorg/telegram/ui/Components/Point;

    const v0, 0x3e19999a    # 0.15f

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludeBlurSize:F

    const v0, 0x3fc90fdb

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurAngle:F

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curveTextView:[Landroid/widget/TextView;

    iput-object p2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->bitmapToEdit:Landroid/graphics/Bitmap;

    iput p3, p0, Lorg/telegram/ui/Components/PhotoFilterView;->orientation:I

    new-instance v0, Landroid/view/TextureView;

    invoke-direct {v0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x33

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    new-instance v1, Lorg/telegram/ui/Components/PhotoFilterView$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoFilterView$1;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    new-instance v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x33

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    new-instance v1, Lorg/telegram/ui/Components/PhotoFilterView$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoFilterView$2;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->setDelegate(Lorg/telegram/ui/Components/PhotoFilterBlurControl$PhotoFilterLinearBlurControlDelegate;)V

    new-instance v0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    invoke-direct {v0, p1, v1}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    new-instance v1, Lorg/telegram/ui/Components/PhotoFilterView$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoFilterView$3;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->setDelegate(Lorg/telegram/ui/Components/PhotoFilterCurvesControl$PhotoFilterCurvesControlDelegate;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x33

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->toolsView:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->toolsView:Landroid/widget/FrameLayout;

    const/4 v1, -0x1

    const/16 v2, 0x7e

    const/16 v3, 0x53

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->toolsView:Landroid/widget/FrameLayout;

    const/4 v2, -0x1

    const/16 v3, 0x30

    const/16 v4, 0x53

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->cancelTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->cancelTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->cancelTextView:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->cancelTextView:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->cancelTextView:Landroid/widget/TextView;

    const v2, -0xc2c2c3

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->cancelTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v3, 0x0

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->cancelTextView:Landroid/widget/TextView;

    const-string/jumbo v2, "Cancel"

    const v3, 0x7f0800f2

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->cancelTextView:Landroid/widget/TextView;

    const-string/jumbo v2, "fonts/rmedium.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->cancelTextView:Landroid/widget/TextView;

    const/4 v2, -0x2

    const/4 v3, -0x1

    const/16 v4, 0x33

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->doneTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->doneTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->doneTextView:Landroid/widget/TextView;

    const v2, -0xae420d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->doneTextView:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->doneTextView:Landroid/widget/TextView;

    const v2, -0xc2c2c3

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->doneTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v3, 0x0

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->doneTextView:Landroid/widget/TextView;

    const-string/jumbo v2, "Done"

    const v3, 0x7f0801dc

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->doneTextView:Landroid/widget/TextView;

    const-string/jumbo v2, "fonts/rmedium.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->doneTextView:Landroid/widget/TextView;

    const/4 v2, -0x2

    const/4 v3, -0x1

    const/16 v4, 0x35

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->calculateMaxToolCellWidth()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->toolCellWidth:I

    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setClipToPadding(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOverScrollMode(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->toolsAdapter:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->toolsView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, -0x1

    const/16 v3, 0x3c

    const/16 v4, 0x33

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/PhotoFilterView$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoFilterView$4;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->editView:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->editView:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->editView:Landroid/widget/FrameLayout;

    const/4 v1, -0x1

    const/16 v2, 0x7e

    const/16 v3, 0x53

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x1000000

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->editView:Landroid/widget/FrameLayout;

    const/4 v1, -0x1

    const/16 v2, 0x30

    const/16 v3, 0x53

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0200cd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v1, -0xc2c2c3

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v1, 0x41b00000    # 22.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x41b00000    # 22.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    const/4 v1, -0x2

    const/4 v2, -0x1

    const/16 v3, 0x33

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Components/PhotoFilterView$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoFilterView$5;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0200ce

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const v2, -0xae420d

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const v1, -0xc2c2c3

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v1, 0x41b00000    # 22.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x41b00000    # 22.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    const/4 v1, -0x2

    const/4 v2, -0x1

    const/16 v3, 0x35

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Components/PhotoFilterView$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoFilterView$6;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->infoTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->infoTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->infoTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoFilterView;->infoTextView:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x41100000    # 9.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->paramTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->paramTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->paramTextView:Landroid/widget/TextView;

    const v1, -0x7f7f80

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoFilterView;->paramTextView:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x41d00000    # 26.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->valueTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->valueTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->valueTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoFilterView;->valueTextView:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x40400000    # 3.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/PhotoEditorSeekBar;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->valueSeekBar:Lorg/telegram/ui/Components/PhotoEditorSeekBar;

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->valueSeekBar:Lorg/telegram/ui/Components/PhotoEditorSeekBar;

    new-instance v1, Lorg/telegram/ui/Components/PhotoFilterView$7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoFilterView$7;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->setDelegate(Lorg/telegram/ui/Components/PhotoEditorSeekBar$PhotoEditorSeekBarDelegate;)V

    iget-object v7, p0, Lorg/telegram/ui/Components/PhotoFilterView;->editView:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoFilterView;->valueSeekBar:Lorg/telegram/ui/Components/PhotoEditorSeekBar;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1f2

    :goto_0
    const/high16 v1, 0x42700000    # 60.0f

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x31

    :goto_1
    const/high16 v3, 0x41600000    # 14.0f

    const/high16 v4, 0x41200000    # 10.0f

    const/high16 v5, 0x41600000    # 14.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curveLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->editView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curveLayout:Landroid/widget/FrameLayout;

    const/4 v2, -0x1

    const/16 v3, 0x4e

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curveLayout:Landroid/widget/FrameLayout;

    const/4 v1, -0x2

    const/16 v2, 0x1c

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    move v6, v0

    :goto_2
    const/4 v0, 0x4

    if-ge v6, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curveTextView:[Landroid/widget/TextView;

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v6

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curveTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v6

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curveTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v6

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curveTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    if-nez v6, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curveTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v6

    const-string/jumbo v1, "CurvesAll"

    const v2, 0x7f08019f

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curveTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v6

    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curveTextView:[Landroid/widget/TextView;

    aget-object v8, v0, v6

    const/4 v0, -0x2

    const/16 v1, 0x1c

    if-nez v6, :cond_6

    const/4 v2, 0x0

    :goto_4
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curveTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v6

    new-instance v1, Lorg/telegram/ui/Components/PhotoFilterView$8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoFilterView$8;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2

    :cond_1
    const/4 v0, -0x1

    goto/16 :goto_0

    :cond_2
    const/16 v2, 0x33

    goto/16 :goto_1

    :cond_3
    const/4 v0, 0x1

    if-ne v6, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curveTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v6

    const-string/jumbo v1, "CurvesRed"

    const v2, 0x7f0801a2

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_4
    const/4 v0, 0x2

    if-ne v6, v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curveTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v6

    const-string/jumbo v1, "CurvesGreen"

    const v2, 0x7f0801a1

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_5
    const/4 v0, 0x3

    if-ne v6, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curveTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v6

    const-string/jumbo v1, "CurvesBlue"

    const v2, 0x7f0801a0

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_6
    const/high16 v2, 0x41f00000    # 30.0f

    goto :goto_4

    :cond_7
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->editView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintLayout:Landroid/widget/FrameLayout;

    const/4 v2, -0x1

    const/16 v3, 0x4e

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintLayout:Landroid/widget/FrameLayout;

    const/4 v1, -0x2

    const/16 v2, 0x1c

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsButton:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsButton:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsButton:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsButton:Landroid/widget/TextView;

    const-string/jumbo v1, "TintShadows"

    const v2, 0x7f080539

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsButton:Landroid/widget/TextView;

    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsButton:Landroid/widget/TextView;

    const/4 v1, -0x2

    const/16 v2, 0x1c

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsButton:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/Components/PhotoFilterView$9;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoFilterView$9;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsButton:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsButton:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsButton:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsButton:Landroid/widget/TextView;

    const-string/jumbo v1, "TintHighlights"

    const v2, 0x7f080538

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsButton:Landroid/widget/TextView;

    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v7, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsButton:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/16 v1, 0x1c

    const/high16 v2, 0x42c80000    # 100.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsButton:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/Components/PhotoFilterView$10;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoFilterView$10;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintButtonsContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintButtonsContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintButtonsContainer:Landroid/widget/LinearLayout;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v7, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintLayout:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintButtonsContainer:Landroid/widget/LinearLayout;

    const/4 v0, -0x1

    const/high16 v1, 0x42480000    # 50.0f

    const/16 v2, 0x33

    const/4 v3, 0x0

    const/high16 v4, 0x41c00000    # 24.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowColors:[I

    array-length v1, v1

    if-ge v0, v1, :cond_8

    new-instance v1, Lorg/telegram/ui/Components/RadioButton;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/RadioButton;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RadioButton;->setSize(I)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RadioButton;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintButtonsContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    iget-object v6, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowColors:[I

    array-length v6, v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lorg/telegram/ui/Components/PhotoFilterView$11;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/PhotoFilterView$11;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_8
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLayout:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lorg/telegram/ui/Components/PhotoFilterView;->editView:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLayout:Landroid/widget/FrameLayout;

    const/16 v0, 0x118

    const/high16 v1, 0x42700000    # 60.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x41200000    # 10.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    const v2, 0x7f020072

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41500000    # 13.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    const v1, -0xae420d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    const-string/jumbo v1, "BlurOff"

    const v2, 0x7f0800ca

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    const/16 v2, 0x50

    const/high16 v3, 0x42700000    # 60.0f

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/Components/PhotoFilterView$12;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoFilterView$12;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    const v2, 0x7f020073

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41500000    # 13.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    const-string/jumbo v1, "BlurRadial"

    const v2, 0x7f0800cb

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLayout:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    const/16 v0, 0x50

    const/high16 v1, 0x42a00000    # 80.0f

    const/16 v2, 0x33

    const/high16 v3, 0x42c80000    # 100.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/Components/PhotoFilterView$13;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoFilterView$13;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    const v2, 0x7f02006f

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41500000    # 13.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    const-string/jumbo v1, "BlurLinear"

    const v2, 0x7f0800c9

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLayout:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    const/16 v0, 0x50

    const/high16 v1, 0x42a00000    # 80.0f

    const/16 v2, 0x33

    const/high16 v3, 0x43480000    # 200.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/Components/PhotoFilterView$14;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoFilterView$14;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :cond_9
    return-void

    :array_0
    .array-data 4
        0x0
        -0xb2b3
        -0xb7fde
        -0x3300
        -0x7e2d7f
        -0x8e3a2a
        -0xff8d44
        -0x99d26f
    .end array-data

    :array_1
    .array-data 4
        0x0
        -0x106d7a
        -0x15315e
        -0xd1e84
        -0x5b1252
        -0x76231b
        -0xd17438
        -0x32671b
    .end array-data
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/PhotoFilterView;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->showOriginal:Z

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->getEnhanceValue()F

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->getGrainValue()F

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->getFadeValue()F

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsColor:I

    return v0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Components/PhotoFilterView;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsColor:I

    return p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->getTintHighlightsIntensityValue()F

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsColor:I

    return v0
.end method

.method static synthetic access$1402(Lorg/telegram/ui/Components/PhotoFilterView;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsColor:I

    return p1
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->getTintShadowsIntensityValue()F

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurType:I

    return v0
.end method

.method static synthetic access$1702(Lorg/telegram/ui/Components/PhotoFilterView;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurType:I

    return p1
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludeSize:F

    return v0
.end method

.method static synthetic access$1802(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludeSize:F

    return p1
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludeBlurSize:F

    return v0
.end method

.method static synthetic access$1902(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludeBlurSize:F

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->getSharpenValue()F

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/Point;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludePoint:Lorg/telegram/ui/Components/Point;

    return-object v0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/Components/PhotoFilterView;Lorg/telegram/ui/Components/Point;)Lorg/telegram/ui/Components/Point;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludePoint:Lorg/telegram/ui/Components/Point;

    return-object p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurAngle:F

    return v0
.end method

.method static synthetic access$2102(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurAngle:F

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->getShadowsValue()F

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->getHighlightsValue()F

    move-result v0

    return v0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->orientation:I

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->getExposureValue()F

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    return-object v0
.end method

.method static synthetic access$5002(Lorg/telegram/ui/Components/PhotoFilterView;Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    return-object p1
.end method

.method static synthetic access$5100(Lorg/telegram/ui/Components/PhotoFilterView;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->bitmapToEdit:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    return v0
.end method

.method static synthetic access$5202(Lorg/telegram/ui/Components/PhotoFilterView;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    return p1
.end method

.method static synthetic access$5300(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceTool:I

    return v0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->previousValue:F

    return v0
.end method

.method static synthetic access$5402(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->previousValue:F

    return p1
.end method

.method static synthetic access$5500(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceValue:F

    return v0
.end method

.method static synthetic access$5502(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceValue:F

    return p1
.end method

.method static synthetic access$5600(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoEditorSeekBar;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->valueSeekBar:Lorg/telegram/ui/Components/PhotoEditorSeekBar;

    return-object v0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/Components/PhotoFilterView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->paramTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->highlightsTool:I

    return v0
.end method

.method static synthetic access$5900(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->highlightsValue:F

    return v0
.end method

.method static synthetic access$5902(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->highlightsValue:F

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->getContrastValue()F

    move-result v0

    return v0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->contrastTool:I

    return v0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->contrastValue:F

    return v0
.end method

.method static synthetic access$6102(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->contrastValue:F

    return p1
.end method

.method static synthetic access$6200(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->exposureTool:I

    return v0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->exposureValue:F

    return v0
.end method

.method static synthetic access$6302(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->exposureValue:F

    return p1
.end method

.method static synthetic access$6400(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->warmthTool:I

    return v0
.end method

.method static synthetic access$6500(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->warmthValue:F

    return v0
.end method

.method static synthetic access$6502(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->warmthValue:F

    return p1
.end method

.method static synthetic access$6600(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->saturationTool:I

    return v0
.end method

.method static synthetic access$6700(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->saturationValue:F

    return v0
.end method

.method static synthetic access$6702(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->saturationValue:F

    return p1
.end method

.method static synthetic access$6800(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->vignetteTool:I

    return v0
.end method

.method static synthetic access$6900(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->vignetteValue:F

    return v0
.end method

.method static synthetic access$6902(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->vignetteValue:F

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->getSaturationValue()F

    move-result v0

    return v0
.end method

.method static synthetic access$7000(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->shadowsTool:I

    return v0
.end method

.method static synthetic access$7100(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->shadowsValue:F

    return v0
.end method

.method static synthetic access$7102(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->shadowsValue:F

    return p1
.end method

.method static synthetic access$7200(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->grainTool:I

    return v0
.end method

.method static synthetic access$7300(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->grainValue:F

    return v0
.end method

.method static synthetic access$7302(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->grainValue:F

    return p1
.end method

.method static synthetic access$7400(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->fadeTool:I

    return v0
.end method

.method static synthetic access$7500(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->fadeValue:F

    return v0
.end method

.method static synthetic access$7502(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->fadeValue:F

    return p1
.end method

.method static synthetic access$7600(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->sharpenTool:I

    return v0
.end method

.method static synthetic access$7700(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->sharpenValue:F

    return v0
.end method

.method static synthetic access$7702(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->sharpenValue:F

    return p1
.end method

.method static synthetic access$7800(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurTool:I

    return v0
.end method

.method static synthetic access$7900(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->previousValueInt:I

    return v0
.end method

.method static synthetic access$7902(Lorg/telegram/ui/Components/PhotoFilterView;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->previousValueInt:I

    return p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->getWarmthValue()F

    move-result v0

    return v0
.end method

.method static synthetic access$8000(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintTool:I

    return v0
.end method

.method static synthetic access$8100(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->previousValueInt2:I

    return v0
.end method

.method static synthetic access$8102(Lorg/telegram/ui/Components/PhotoFilterView;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->previousValueInt2:I

    return p1
.end method

.method static synthetic access$8200(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesTool:I

    return v0
.end method

.method static synthetic access$8300(Lorg/telegram/ui/Components/PhotoFilterView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->updateValueTextView()V

    return-void
.end method

.method static synthetic access$8400(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->toolsAdapter:Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    return-object v0
.end method

.method static synthetic access$8500(Lorg/telegram/ui/Components/PhotoFilterView;)[Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curveTextView:[Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8600(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterCurvesControl;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    return-object v0
.end method

.method static synthetic access$8700(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTintMode:I

    return v0
.end method

.method static synthetic access$8702(Lorg/telegram/ui/Components/PhotoFilterView;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTintMode:I

    return p1
.end method

.method static synthetic access$8800(Lorg/telegram/ui/Components/PhotoFilterView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoFilterView;->updateSelectedTintButton(Z)V

    return-void
.end method

.method static synthetic access$8900(Lorg/telegram/ui/Components/PhotoFilterView;)[I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowColors:[I

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->getVignetteValue()F

    move-result v0

    return v0
.end method

.method static synthetic access$9000(Lorg/telegram/ui/Components/PhotoFilterView;)[I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlighsColors:[I

    return-object v0
.end method

.method static synthetic access$9100(Lorg/telegram/ui/Components/PhotoFilterView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->updateSelectedBlurType()V

    return-void
.end method

.method static synthetic access$9200(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterBlurControl;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    return-object v0
.end method

.method static synthetic access$9300(Lorg/telegram/ui/Components/PhotoFilterView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->checkEnhance()V

    return-void
.end method

.method static synthetic access$9400(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->toolCellWidth:I

    return v0
.end method

.method private calculateMaxToolCellWidth()I
    .locals 6

    const/4 v5, 0x1

    const/4 v0, 0x0

    const/16 v1, 0xe

    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v1, "Enhance"

    const v3, 0x7f0801fb

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    const-string/jumbo v1, "Exposure"

    const v3, 0x7f080206

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v5

    const/4 v1, 0x2

    const-string/jumbo v3, "Contrast"

    const v4, 0x7f080186

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string/jumbo v3, "Warmth"

    const v4, 0x7f080591

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x4

    const-string/jumbo v3, "Saturation"

    const v4, 0x7f0804a1

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x5

    const-string/jumbo v3, "Tint"

    const v4, 0x7f080537

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x6

    const-string/jumbo v3, "Fade"

    const v4, 0x7f080208

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x7

    const-string/jumbo v3, "Highlights"

    const v4, 0x7f080271

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/16 v1, 0x8

    const-string/jumbo v3, "Shadows"

    const v4, 0x7f0804f0

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/16 v1, 0x9

    const-string/jumbo v3, "Vignette"

    const v4, 0x7f08056c

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/16 v1, 0xa

    const-string/jumbo v3, "Grain"

    const v4, 0x7f080262

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/16 v1, 0xb

    const-string/jumbo v3, "Blur"

    const v4, 0x7f0800c8

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/16 v1, 0xc

    const-string/jumbo v3, "Sharpen"

    const v4, 0x7f0804ff

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/16 v1, 0xd

    const-string/jumbo v3, "Curves"

    const v4, 0x7f08019e

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v5, v1, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v1, 0x0

    array-length v4, v2

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v2, v0

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/high16 v0, 0x42600000    # 56.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private checkEnhance()V
    .locals 7

    const/4 v4, 0x1

    const/4 v6, 0x0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceValue:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-array v1, v4, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->valueSeekBar:Lorg/telegram/ui/Components/PhotoEditorSeekBar;

    const-string/jumbo v3, "progress"

    new-array v4, v4, [I

    const/16 v5, 0x32

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method

.method private fixLayout(II)V
    .locals 12

    const/high16 v9, 0x41600000    # 14.0f

    const/high16 v8, 0x40000000    # 2.0f

    const/16 v11, 0x15

    const/high16 v10, 0x41e00000    # 28.0f

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->bitmapToEdit:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int v4, p1, v0

    const/high16 v0, 0x431a0000    # 154.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v11, :cond_3

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_1
    add-int/2addr v0, v2

    sub-int v5, p2, v0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->orientation:I

    rem-int/lit16 v0, v0, 0x168

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->orientation:I

    rem-int/lit16 v0, v0, 0x168

    const/16 v2, 0x10e

    if-ne v0, v2, :cond_4

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    :goto_2
    int-to-float v3, v4

    div-float/2addr v3, v2

    int-to-float v6, v5

    div-float/2addr v6, v0

    cmpl-float v7, v3, v6

    if-lez v7, :cond_5

    int-to-float v0, v5

    mul-float/2addr v2, v6

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-float v2, v2

    move v3, v2

    move v2, v0

    :goto_3
    int-to-float v0, v4

    sub-float/2addr v0, v3

    div-float/2addr v0, v8

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v0, v6

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    int-to-float v0, v5

    sub-float/2addr v0, v2

    div-float/2addr v0, v8

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v11, :cond_6

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_4
    int-to-float v0, v0

    add-float/2addr v0, v7

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v7, v8

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    int-to-float v6, v6

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v11, :cond_7

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_5
    sub-int v2, v7, v2

    int-to-float v2, v2

    iget v7, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float v7, v7

    iget v8, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v8, v8

    invoke-virtual {v3, v6, v2, v7, v8}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->setActualArea(FFFF)V

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float v3, v3

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v0, v0

    invoke-virtual {v2, v3, v0}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->setActualAreaSize(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v2, v5

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v2, v5

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x42ac0000    # 86.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    mul-int/lit8 v2, v0, 0xa

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-ge v2, v4, :cond_8

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int v1, v4, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_0

    :cond_3
    move v0, v1

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    goto/16 :goto_2

    :cond_5
    int-to-float v2, v4

    mul-float/2addr v0, v3

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    int-to-float v0, v0

    move v3, v2

    move v2, v0

    goto/16 :goto_3

    :cond_6
    move v0, v1

    goto/16 :goto_4

    :cond_7
    move v2, v1

    goto :goto_5

    :cond_8
    const/4 v2, -0x1

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_0
.end method

.method private getContrastValue()F
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->contrastValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    return v0
.end method

.method private getEnhanceValue()F
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private getExposureValue()F
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->exposureValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private getFadeValue()F
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->fadeValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private getGrainValue()F
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->grainValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    const v1, 0x3d23d70a    # 0.04f

    mul-float/2addr v0, v1

    return v0
.end method

.method private getHighlightsValue()F
    .locals 3

    const/high16 v2, 0x42c80000    # 100.0f

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->highlightsValue:F

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    div-float/2addr v0, v2

    return v0
.end method

.method private getSaturationValue()F
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->saturationValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    const v1, 0x3f866666    # 1.05f

    mul-float/2addr v0, v1

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    return v0
.end method

.method private getShadowsValue()F
    .locals 3

    const/high16 v2, 0x42c80000    # 100.0f

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->shadowsValue:F

    const v1, 0x3f0ccccd    # 0.55f

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    div-float/2addr v0, v2

    return v0
.end method

.method private getSharpenValue()F
    .locals 3

    const v0, 0x3de147ae    # 0.11f

    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->sharpenValue:F

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private getTintHighlightsIntensityValue()F
    .locals 2

    const/high16 v0, 0x42480000    # 50.0f

    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsColor:I

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method private getTintShadowsIntensityValue()F
    .locals 2

    const/high16 v0, 0x42480000    # 50.0f

    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsColor:I

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method private getVignetteValue()F
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->vignetteValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private getWarmthValue()F
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->warmthValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private setShowOriginal(Z)V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->showOriginal:Z

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->showOriginal:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->requestRender(Z)V

    goto :goto_0
.end method

.method private updateSelectedBlurType()V
    .locals 7

    const v6, 0x7f020071

    const v5, 0x7f02006f

    const v4, -0xae420d

    const/4 v3, -0x1

    const/4 v2, 0x0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurType:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    const v1, 0x7f020072

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    const v1, 0x7f020073

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v5, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v6, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    const v1, 0x7f020074

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v5, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v6, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    const v1, 0x7f020073

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    const v1, 0x7f020070

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private updateSelectedTintButton(Z)V
    .locals 9

    const/4 v4, 0x0

    const v1, -0x7f7f80

    const/4 v3, 0x1

    const/4 v2, -0x1

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsButton:Landroid/widget/TextView;

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTintMode:I

    if-ne v0, v3, :cond_1

    move v0, v2

    :goto_0
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsButton:Landroid/widget/TextView;

    iget v5, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTintMode:I

    if-ne v5, v3, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    move v6, v4

    :goto_2
    if-ge v6, v7, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lorg/telegram/ui/Components/RadioButton;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/telegram/ui/Components/RadioButton;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RadioButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTintMode:I

    if-nez v1, :cond_3

    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsColor:I

    :goto_3
    iget v5, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTintMode:I

    if-nez v5, :cond_4

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowColors:[I

    aget v5, v5, v8

    :goto_4
    if-ne v1, v5, :cond_5

    move v1, v3

    :goto_5
    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/RadioButton;->setChecked(ZZ)V

    if-nez v8, :cond_6

    move v5, v2

    :goto_6
    if-nez v8, :cond_8

    move v1, v2

    :goto_7
    invoke-virtual {v0, v5, v1}, Lorg/telegram/ui/Components/RadioButton;->setColor(II)V

    :cond_0
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsColor:I

    goto :goto_3

    :cond_4
    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlighsColors:[I

    aget v5, v5, v8

    goto :goto_4

    :cond_5
    move v1, v4

    goto :goto_5

    :cond_6
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTintMode:I

    if-nez v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowColors:[I

    aget v1, v1, v8

    move v5, v1

    goto :goto_6

    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlighsColors:[I

    aget v1, v1, v8

    move v5, v1

    goto :goto_6

    :cond_8
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTintMode:I

    if-nez v1, :cond_9

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowColors:[I

    aget v1, v1, v8

    goto :goto_7

    :cond_9
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlighsColors:[I

    aget v1, v1, v8

    goto :goto_7

    :cond_a
    return-void
.end method

.method private updateValueTextView()V
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    iget v2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceTool:I

    if-ne v1, v2, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceValue:F

    float-to-int v0, v0

    :cond_0
    :goto_0
    if-lez v0, :cond_b

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->valueTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_1
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    iget v2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->highlightsTool:I

    if-ne v1, v2, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->highlightsValue:F

    float-to-int v0, v0

    goto :goto_0

    :cond_2
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    iget v2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->contrastTool:I

    if-ne v1, v2, :cond_3

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->contrastValue:F

    float-to-int v0, v0

    goto :goto_0

    :cond_3
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    iget v2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->exposureTool:I

    if-ne v1, v2, :cond_4

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->exposureValue:F

    float-to-int v0, v0

    goto :goto_0

    :cond_4
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    iget v2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->warmthTool:I

    if-ne v1, v2, :cond_5

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->warmthValue:F

    float-to-int v0, v0

    goto :goto_0

    :cond_5
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    iget v2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->saturationTool:I

    if-ne v1, v2, :cond_6

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->saturationValue:F

    float-to-int v0, v0

    goto :goto_0

    :cond_6
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    iget v2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->vignetteTool:I

    if-ne v1, v2, :cond_7

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->vignetteValue:F

    float-to-int v0, v0

    goto :goto_0

    :cond_7
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    iget v2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->shadowsTool:I

    if-ne v1, v2, :cond_8

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->shadowsValue:F

    float-to-int v0, v0

    goto :goto_0

    :cond_8
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    iget v2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->grainTool:I

    if-ne v1, v2, :cond_9

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->grainValue:F

    float-to-int v0, v0

    goto :goto_0

    :cond_9
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    iget v2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->sharpenTool:I

    if-ne v1, v2, :cond_a

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->sharpenValue:F

    float-to-int v0, v0

    goto :goto_0

    :cond_a
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    iget v2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->fadeTool:I

    if-ne v1, v2, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->fadeValue:F

    float-to-int v0, v0

    goto :goto_0

    :cond_b
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->valueTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->getTexture()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCancelTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->cancelTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getDoneTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->doneTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getEditView()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->editView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getToolsView()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->toolsView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public hasChanges()Z
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceValue:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->contrastValue:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->highlightsValue:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->exposureValue:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->warmthValue:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->saturationValue:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->vignetteValue:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->shadowsValue:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->grainValue:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->sharpenValue:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->fadeValue:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsColor:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsColor:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->shouldBeSkipped()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->fixLayout(II)V

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_1

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/PhotoFilterView;->setShowOriginal(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v4, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PhotoFilterView;->setShowOriginal(Z)V

    goto :goto_0
.end method

.method public setEditViewFirst()V
    .locals 4

    const/4 v3, 0x0

    iput v3, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceValue:F

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->previousValue:F

    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceValue:F

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->valueSeekBar:Lorg/telegram/ui/Components/PhotoEditorSeekBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v3, v1}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->setMinMax(II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->paramTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "Enhance"

    const v2, 0x7f0801fb

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->editView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->toolsView:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->valueSeekBar:Lorg/telegram/ui/Components/PhotoEditorSeekBar;

    const/16 v1, 0x32

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->setProgress(IZ)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->updateValueTextView()V

    return-void
.end method

.method public shutdown()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->shutdown()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    return-void
.end method

.method public switchToOrFromEditMode()V
    .locals 9

    const/4 v8, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x4

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->editView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-ne v0, v4, :cond_9

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView;->toolsView:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->editView:Landroid/widget/FrameLayout;

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    iget v6, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurTool:I

    if-eq v0, v6, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    iget v6, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintTool:I

    if-eq v0, v6, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    iget v6, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesTool:I

    if-ne v0, v6, :cond_8

    :cond_0
    iget-object v6, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLayout:Landroid/widget/FrameLayout;

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    iget v7, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurTool:I

    if-ne v0, v7, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v6, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintLayout:Landroid/widget/FrameLayout;

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    iget v7, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintTool:I

    if-ne v0, v7, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v6, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curveLayout:Landroid/widget/FrameLayout;

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    iget v7, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesTool:I

    if-ne v0, v7, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    iget v6, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurTool:I

    if-ne v0, v6, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->infoTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "Blur"

    const v6, 0x7f0800c8

    invoke-static {v3, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurType:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->setVisibility(I)V

    :cond_1
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->infoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->valueSeekBar:Lorg/telegram/ui/Components/PhotoEditorSeekBar;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->paramTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->updateSelectedBlurType()V

    move-object v0, v4

    move-object v2, v5

    :goto_4
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v4, v8, [Landroid/animation/Animator;

    const-string/jumbo v5, "translationY"

    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    aput v7, v6, v1

    const/high16 v7, 0x42fc0000    # 126.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    aput v7, v6, v8

    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v1, Lorg/telegram/ui/Components/PhotoFilterView$15;

    invoke-direct {v1, p0, v2, v0}, Lorg/telegram/ui/Components/PhotoFilterView$15;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_2
    move v0, v2

    goto/16 :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    iget v6, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesTool:I

    if-ne v0, v6, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->infoTextView:Landroid/widget/TextView;

    const-string/jumbo v6, "Curves"

    const v7, 0x7f08019e

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iput v1, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->activeType:I

    move v6, v1

    :goto_5
    if-ge v6, v2, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curveTextView:[Landroid/widget/TextView;

    aget-object v7, v0, v6

    if-nez v6, :cond_6

    move v0, v3

    :goto_6
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_5

    :cond_6
    const v0, -0x7f7f80

    goto :goto_6

    :cond_7
    iput v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTintMode:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->updateSelectedTintButton(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->infoTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "Tint"

    const v6, 0x7f080537

    invoke-static {v3, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curveLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->valueSeekBar:Lorg/telegram/ui/Components/PhotoEditorSeekBar;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->infoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->paramTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->setVisibility(I)V

    move-object v0, v4

    move-object v2, v5

    goto/16 :goto_4

    :cond_9
    iput v3, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoFilterView;->editView:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->toolsView:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->setVisibility(I)V

    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->setVisibility(I)V

    move-object v2, v3

    goto/16 :goto_4
.end method
