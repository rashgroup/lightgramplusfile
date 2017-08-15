.class public Lorg/telegram/ui/Components/PhotoPaintView;
.super Landroid/widget/FrameLayout;
.source "PhotoPaintView.java"

# interfaces
.implements Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/PhotoPaintView$StickerPosition;
    }
.end annotation


# static fields
.field private static final gallery_menu_done:I = 0x1

.field private static final gallery_menu_undo:I = 0x2


# instance fields
.field private actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

.field private bitmapToEdit:Landroid/graphics/Bitmap;

.field private brushes:[Lorg/telegram/ui/Components/Paint/Brush;

.field private cancelTextView:Landroid/widget/TextView;

.field private colorPicker:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

.field private colorPickerAnimator:Landroid/animation/Animator;

.field currentBrush:I

.field private currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

.field private curtainView:Landroid/widget/FrameLayout;

.field private dimView:Landroid/widget/FrameLayout;

.field private doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private doneTextView:Landroid/widget/TextView;

.field private editedTextPosition:Lorg/telegram/ui/Components/Point;

.field private editedTextRotation:F

.field private editedTextScale:F

.field private editingText:Z

.field private entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

.field private faces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Components/Paint/PhotoFace;",
            ">;"
        }
    .end annotation
.end field

.field private initialText:Ljava/lang/String;

.field private orientation:I

.field private paintButton:Landroid/widget/ImageView;

.field private paintingSize:Lorg/telegram/ui/Components/Size;

.field private pickingSticker:Z

.field private popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

.field private popupRect:Landroid/graphics/Rect;

.field private popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

.field private queue:Lorg/telegram/messenger/DispatchQueue;

.field private renderView:Lorg/telegram/ui/Components/Paint/RenderView;

.field private selectedStroke:Z

.field private selectionContainerView:Landroid/widget/FrameLayout;

.field private stickersView:Lorg/telegram/ui/Components/StickerMasksView;

.field private textDimView:Landroid/widget/FrameLayout;

.field private toolsView:Landroid/widget/FrameLayout;

.field private undoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V
    .locals 9

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/telegram/ui/Components/Paint/Brush;

    const/4 v1, 0x0

    new-instance v2, Lorg/telegram/ui/Components/Paint/Brush$Radial;

    invoke-direct {v2}, Lorg/telegram/ui/Components/Paint/Brush$Radial;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lorg/telegram/ui/Components/Paint/Brush$Elliptical;

    invoke-direct {v2}, Lorg/telegram/ui/Components/Paint/Brush$Elliptical;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lorg/telegram/ui/Components/Paint/Brush$Neon;

    invoke-direct {v2}, Lorg/telegram/ui/Components/Paint/Brush$Neon;-><init>()V

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->brushes:[Lorg/telegram/ui/Components/Paint/Brush;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->selectedStroke:Z

    new-instance v0, Lorg/telegram/messenger/DispatchQueue;

    const-string/jumbo v1, "Paint"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->queue:Lorg/telegram/messenger/DispatchQueue;

    iput-object p2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    iput p3, p0, Lorg/telegram/ui/Components/PhotoPaintView;->orientation:I

    new-instance v0, Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Paint/UndoStore;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    new-instance v1, Lorg/telegram/ui/Components/PhotoPaintView$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoPaintView$1;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/UndoStore;->setDelegate(Lorg/telegram/ui/Components/Paint/UndoStore$UndoStoreDelegate;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->curtainView:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->curtainView:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->curtainView:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->curtainView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/PhotoPaintView;->addView(Landroid/view/View;)V

    new-instance v0, Lorg/telegram/ui/Components/Paint/RenderView;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Painting;

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->getPaintingSize()Lorg/telegram/ui/Components/Size;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/Paint/Painting;-><init>(Lorg/telegram/ui/Components/Size;)V

    iget v2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->orientation:I

    invoke-direct {v0, p1, v1, p2, v2}, Lorg/telegram/ui/Components/Paint/RenderView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Paint/Painting;Landroid/graphics/Bitmap;I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    new-instance v1, Lorg/telegram/ui/Components/PhotoPaintView$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoPaintView$2;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->setDelegate(Lorg/telegram/ui/Components/Paint/RenderView$RenderViewDelegate;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->setUndoStore(Lorg/telegram/ui/Components/Paint/UndoStore;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->queue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->setQueue(Lorg/telegram/messenger/DispatchQueue;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->brushes:[Lorg/telegram/ui/Components/Paint/Brush;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->setBrush(Lorg/telegram/ui/Components/Paint/Brush;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x33

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/PhotoPaintView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    new-instance v1, Lorg/telegram/ui/Components/PhotoPaintView$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoPaintView$3;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;)V

    invoke-direct {v0, p1, v1}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->setPivotX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->setPivotY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/PhotoPaintView;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->dimView:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->dimView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->dimView:Landroid/widget/FrameLayout;

    const/high16 v1, 0x66000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->dimView:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->dimView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/PhotoPaintView;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->textDimView:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->textDimView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->textDimView:Landroid/widget/FrameLayout;

    const/high16 v1, 0x66000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->textDimView:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->textDimView:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/Components/PhotoPaintView$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoPaintView$4;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lorg/telegram/ui/Components/PhotoPaintView$5;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/PhotoPaintView$5;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/PhotoPaintView;->addView(Landroid/view/View;)V

    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPicker:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPicker:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/PhotoPaintView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPicker:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    new-instance v1, Lorg/telegram/ui/Components/PhotoPaintView$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoPaintView$6;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/ColorPicker$ColorPickerDelegate;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->toolsView:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->toolsView:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->toolsView:Landroid/widget/FrameLayout;

    const/4 v1, -0x1

    const/16 v2, 0x30

    const/16 v3, 0x53

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/PhotoPaintView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->cancelTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->cancelTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->cancelTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->cancelTextView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->cancelTextView:Landroid/widget/TextView;

    const v1, -0xc2c2c3

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->cancelTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->cancelTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "Cancel"

    const v2, 0x7f0800f2

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->cancelTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->toolsView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->cancelTextView:Landroid/widget/TextView;

    const/4 v2, -0x2

    const/4 v3, -0x1

    const/16 v4, 0x33

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->doneTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->doneTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->doneTextView:Landroid/widget/TextView;

    const v1, -0xae420d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->doneTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->doneTextView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->doneTextView:Landroid/widget/TextView;

    const v1, -0xc2c2c3

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->doneTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->doneTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "Done"

    const v2, 0x7f0801dc

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->doneTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->toolsView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->doneTextView:Landroid/widget/TextView;

    const/4 v2, -0x2

    const/4 v3, -0x1

    const/16 v4, 0x35

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const v0, 0x7f020212

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x40ffffff    # 7.9999995f

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoPaintView;->toolsView:Landroid/widget/FrameLayout;

    const/16 v0, 0x36

    const/high16 v1, -0x40800000    # -1.0f

    const/16 v2, 0x11

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x42600000    # 56.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v7, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/PhotoPaintView$7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PhotoPaintView$7;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;)V

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->paintButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->paintButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->paintButton:Landroid/widget/ImageView;

    const v1, 0x7f02020d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->paintButton:Landroid/widget/ImageView;

    const v1, 0x40ffffff    # 7.9999995f

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->toolsView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->paintButton:Landroid/widget/ImageView;

    const/16 v2, 0x36

    const/4 v3, -0x1

    const/16 v4, 0x11

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->paintButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/Components/PhotoPaintView$8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoPaintView$8;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const v0, 0x7f020210

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x40ffffff    # 7.9999995f

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoPaintView;->toolsView:Landroid/widget/FrameLayout;

    const/16 v0, 0x36

    const/high16 v1, -0x40800000    # -1.0f

    const/16 v2, 0x11

    const/high16 v3, 0x42600000    # 56.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v7, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/PhotoPaintView$9;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PhotoPaintView$9;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;)V

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/high16 v1, 0x7f000000

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v1, 0x40ffffff    # 7.9999995f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v1, 0x7f0200e8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "PaintDraw"

    const v2, 0x7f0803e9

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, -0x1

    const/high16 v2, -0x40000000    # -2.0f

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/PhotoPaintView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/Components/PhotoPaintView$10;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoPaintView$10;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    const/4 v1, 0x2

    const v2, 0x7f020216

    const/high16 v3, 0x42600000    # 56.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->undoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/PhotoPaintView;->setMenuItemEnabled(Z)V

    const/4 v1, 0x1

    const v2, 0x7f02011d

    const/high16 v3, 0x42600000    # 56.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPicker:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->getSwatch()Lorg/telegram/ui/Components/Paint/Swatch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/PhotoPaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->updateSettingsButton()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/Components/Paint/UndoStore;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/PhotoPaintView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoPaintView;->setMenuItemEnabled(Z)V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/PhotoPaintView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->showTextSettings()V

    return-void
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/PhotoPaintView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->showBrushSettings()V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/PhotoPaintView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->openStickersView()V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/PhotoPaintView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->createText()V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/PhotoPaintView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->cancelTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/PhotoPaintView;)Landroid/animation/Animator;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPickerAnimator:Landroid/animation/Animator;

    return-object v0
.end method

.method static synthetic access$1502(Lorg/telegram/ui/Components/PhotoPaintView;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPickerAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/PhotoPaintView;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->dimView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/PhotoPaintView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->closeStickersView()V

    return-void
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/PhotoPaintView;Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoPaintView;->createSticker(Lorg/telegram/tgnet/TLRPC$Document;)V

    return-void
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/PhotoPaintView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->updateStickersTitle()V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/PhotoPaintView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoPaintView;->setColorPickerVisibilityFade(Z)V

    return-void
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/Components/StickerMasksView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->stickersView:Lorg/telegram/ui/Components/StickerMasksView;

    return-object v0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/PhotoPaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoPaintView;->removeEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    return-void
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    return-object v0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/PhotoPaintView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->editSelectedTextEntity()V

    return-void
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/PhotoPaintView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->duplicateSelectedEntity()V

    return-void
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    return-object v0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/PhotoPaintView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoPaintView;->setBrush(I)V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/EntityView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    return-object v0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/PhotoPaintView;IIZ)Landroid/widget/FrameLayout;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/PhotoPaintView;->buttonForBrush(IIZ)Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/PhotoPaintView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoPaintView;->setStroke(Z)V

    return-void
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/PhotoPaintView;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->selectedStroke:Z

    return v0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/PhotoPaintView;ZLjava/lang/String;Z)Landroid/widget/FrameLayout;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/PhotoPaintView;->buttonForText(ZLjava/lang/String;Z)Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/PhotoPaintView;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/PhotoPaintView;)I
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->getFrameRotation()I

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/PhotoPaintView;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/Components/Size;
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->getPaintingSize()Lorg/telegram/ui/Components/Size;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Components/PhotoPaintView;)Z
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->isSidewardOrientation()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3902(Lorg/telegram/ui/Components/PhotoPaintView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->faces:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/PhotoPaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/PhotoPaintView;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->textDimView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/PhotoPaintView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoPaintView;->setDimVisibility(Z)V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/ColorPicker;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPicker:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/PhotoPaintView;Lorg/telegram/ui/Components/Paint/Swatch;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/PhotoPaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/PhotoPaintView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->mirrorSticker()V

    return-void
.end method

.method private baseFontSize()I
    .locals 2

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->getPaintingSize()Lorg/telegram/ui/Components/Size;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/Components/Size;->width:F

    const/high16 v1, 0x41100000    # 9.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private baseStickerSize()Lorg/telegram/ui/Components/Size;
    .locals 4

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->getPaintingSize()Lorg/telegram/ui/Components/Size;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/Components/Size;->width:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    new-instance v1, Lorg/telegram/ui/Components/Size;

    invoke-direct {v1, v0, v0}, Lorg/telegram/ui/Components/Size;-><init>(FF)V

    return-object v1
.end method

.method private buttonForBrush(IIZ)Landroid/widget/FrameLayout;
    .locals 9

    const/4 v4, 0x0

    new-instance v7, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lorg/telegram/ui/Components/PhotoPaintView$20;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/PhotoPaintView$20;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;I)V

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v8, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 v0, 0xa5

    const/high16 v1, 0x42300000    # 44.0f

    const/16 v2, 0x13

    const/high16 v3, 0x42380000    # 46.0f

    const/high16 v5, 0x41000000    # 8.0f

    move v6, v4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p3, :cond_0

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0200eb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/16 v1, 0x32

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-object v7
.end method

.method private buttonForText(ZLjava/lang/String;Z)Landroid/widget/FrameLayout;
    .locals 9

    const/4 v5, 0x1

    const/high16 v1, -0x1000000

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const/4 v2, 0x0

    new-instance v7, Lorg/telegram/ui/Components/PhotoPaintView$22;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v7, p0, v0}, Lorg/telegram/ui/Components/PhotoPaintView$22;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;Landroid/content/Context;)V

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lorg/telegram/ui/Components/PhotoPaintView$23;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/PhotoPaintView$23;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;Z)V

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v8, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v8, v0}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v2}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setBackgroundColor(I)V

    invoke-virtual {v8, v2}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setEnabled(Z)V

    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v8, v0}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setStrokeWidth(F)V

    if-eqz p1, :cond_1

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v8, v0}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setTextColor(I)V

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v8, v1}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setStrokeColor(I)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v8, v0, v2, v1, v2}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setPadding(IIII)V

    const/high16 v0, 0x41900000    # 18.0f

    invoke-virtual {v8, v5, v0}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setTextSize(IF)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0, v5}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setTypeface(Landroid/graphics/Typeface;I)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v8, p2}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x13

    const/high16 v3, 0x42380000    # 46.0f

    const/high16 v5, 0x41800000    # 16.0f

    move v6, v4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p3, :cond_0

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0200eb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/16 v1, 0x32

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-object v7

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private calculateStickerPosition(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/ui/Components/PhotoPaintView$StickerPosition;
    .locals 14

    const-wide v12, 0x3ff921fb54442d18L    # 1.5707963267948966

    const/4 v2, 0x0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    if-eqz v3, :cond_1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->mask_coords:Lorg/telegram/tgnet/TLRPC$TL_maskCoords;

    :goto_1
    new-instance v1, Lorg/telegram/ui/Components/PhotoPaintView$StickerPosition;

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->centerPositionForEntity()Lorg/telegram/ui/Components/Point;

    move-result-object v2

    const/high16 v3, 0x3f400000    # 0.75f

    const/4 v4, 0x0

    invoke-direct {v1, p0, v2, v3, v4}, Lorg/telegram/ui/Components/PhotoPaintView$StickerPosition;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;Lorg/telegram/ui/Components/Point;FF)V

    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->faces:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->faces:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move-object v0, v1

    :goto_2
    return-object v0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_maskCoords;->n:I

    iget-wide v4, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-direct {p0, v2, v4, v5, v0}, Lorg/telegram/ui/Components/PhotoPaintView;->getRandomFaceWithVacantAnchor(IJLorg/telegram/tgnet/TLRPC$TL_maskCoords;)Lorg/telegram/ui/Components/Paint/PhotoFace;

    move-result-object v3

    if-nez v3, :cond_3

    move-object v0, v1

    goto :goto_2

    :cond_3
    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/Paint/PhotoFace;->getPointForAnchor(I)Lorg/telegram/ui/Components/Point;

    move-result-object v1

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/Paint/PhotoFace;->getWidthForAnchor(I)F

    move-result v2

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/PhotoFace;->getAngle()F

    move-result v3

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->baseStickerSize()Lorg/telegram/ui/Components/Size;

    move-result-object v4

    iget v4, v4, Lorg/telegram/ui/Components/Size;->width:F

    div-float v4, v2, v4

    float-to-double v4, v4

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_maskCoords;->zoom:D

    mul-double/2addr v4, v6

    double-to-float v4, v4

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    double-to-float v5, v6

    float-to-double v6, v5

    sub-double v6, v12, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    float-to-double v8, v2

    mul-double/2addr v6, v8

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_maskCoords;->x:D

    mul-double/2addr v6, v8

    double-to-float v6, v6

    float-to-double v8, v5

    sub-double v8, v12, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    float-to-double v10, v2

    mul-double/2addr v8, v10

    iget-wide v10, v0, Lorg/telegram/tgnet/TLRPC$TL_maskCoords;->x:D

    mul-double/2addr v8, v10

    double-to-float v7, v8

    float-to-double v8, v5

    add-double/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    float-to-double v10, v2

    mul-double/2addr v8, v10

    iget-wide v10, v0, Lorg/telegram/tgnet/TLRPC$TL_maskCoords;->y:D

    mul-double/2addr v8, v10

    double-to-float v8, v8

    float-to-double v10, v5

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    float-to-double v12, v2

    mul-double/2addr v10, v12

    iget-wide v12, v0, Lorg/telegram/tgnet/TLRPC$TL_maskCoords;->y:D

    mul-double/2addr v10, v12

    double-to-float v0, v10

    iget v2, v1, Lorg/telegram/ui/Components/Point;->x:F

    add-float/2addr v2, v6

    add-float/2addr v2, v8

    iget v1, v1, Lorg/telegram/ui/Components/Point;->y:F

    add-float/2addr v1, v7

    add-float/2addr v1, v0

    new-instance v0, Lorg/telegram/ui/Components/PhotoPaintView$StickerPosition;

    new-instance v5, Lorg/telegram/ui/Components/Point;

    invoke-direct {v5, v2, v1}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    invoke-direct {v0, p0, v5, v4, v3}, Lorg/telegram/ui/Components/PhotoPaintView$StickerPosition;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;Lorg/telegram/ui/Components/Point;FF)V

    goto :goto_2

    :cond_4
    move-object v0, v2

    goto/16 :goto_1
.end method

.method private centerPositionForEntity()Lorg/telegram/ui/Components/Point;
    .locals 4

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->getPaintingSize()Lorg/telegram/ui/Components/Size;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/Point;

    iget v2, v0, Lorg/telegram/ui/Components/Size;->width:F

    div-float/2addr v2, v3

    iget v0, v0, Lorg/telegram/ui/Components/Size;->height:F

    div-float/2addr v0, v3

    invoke-direct {v1, v2, v0}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    return-object v1
.end method

.method private closeStickersView()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->stickersView:Lorg/telegram/ui/Components/StickerMasksView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->stickersView:Lorg/telegram/ui/Components/StickerMasksView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickerMasksView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v4, p0, Lorg/telegram/ui/Components/PhotoPaintView;->pickingSticker:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->stickersView:Lorg/telegram/ui/Components/StickerMasksView;

    const-string/jumbo v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v1, Lorg/telegram/ui/Components/PhotoPaintView$17;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoPaintView$17;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->undoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "PaintDraw"

    const v2, 0x7f0803e9

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private createSticker(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 7

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoPaintView;->calculateStickerPosition(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/ui/Components/PhotoPaintView$StickerPosition;

    move-result-object v4

    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->getContext()Landroid/content/Context;

    move-result-object v1

    # getter for: Lorg/telegram/ui/Components/PhotoPaintView$StickerPosition;->position:Lorg/telegram/ui/Components/Point;
    invoke-static {v4}, Lorg/telegram/ui/Components/PhotoPaintView$StickerPosition;->access$2200(Lorg/telegram/ui/Components/PhotoPaintView$StickerPosition;)Lorg/telegram/ui/Components/Point;

    move-result-object v2

    # getter for: Lorg/telegram/ui/Components/PhotoPaintView$StickerPosition;->angle:F
    invoke-static {v4}, Lorg/telegram/ui/Components/PhotoPaintView$StickerPosition;->access$2300(Lorg/telegram/ui/Components/PhotoPaintView$StickerPosition;)F

    move-result v3

    # getter for: Lorg/telegram/ui/Components/PhotoPaintView$StickerPosition;->scale:F
    invoke-static {v4}, Lorg/telegram/ui/Components/PhotoPaintView$StickerPosition;->access$2400(Lorg/telegram/ui/Components/PhotoPaintView$StickerPosition;)F

    move-result v4

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->baseStickerSize()Lorg/telegram/ui/Components/Size;

    move-result-object v5

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/Paint/Views/StickerView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;FFLorg/telegram/ui/Components/Size;Lorg/telegram/tgnet/TLRPC$Document;)V

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->addView(Landroid/view/View;)V

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PhotoPaintView;->registerRemovalUndo(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    return-void
.end method

.method private createText()V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPicker:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->getSwatch()Lorg/telegram/ui/Components/Paint/Swatch;

    move-result-object v2

    new-instance v1, Lorg/telegram/ui/Components/Paint/Swatch;

    const/4 v0, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, v2, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    invoke-direct {v1, v0, v3, v4}, Lorg/telegram/ui/Components/Paint/Swatch;-><init>(IFF)V

    new-instance v0, Lorg/telegram/ui/Components/Paint/Swatch;

    const/high16 v3, -0x1000000

    const v4, 0x3f59999a    # 0.85f

    iget v2, v2, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    invoke-direct {v0, v3, v4, v2}, Lorg/telegram/ui/Components/Paint/Swatch;-><init>(IFF)V

    iget-boolean v2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->selectedStroke:Z

    if-eqz v2, :cond_0

    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/PhotoPaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/PhotoPaintView;->startPositionRelativeToEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Lorg/telegram/ui/Components/Point;

    move-result-object v2

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->baseFontSize()I

    move-result v3

    const-string/jumbo v4, ""

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPicker:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->getSwatch()Lorg/telegram/ui/Components/Paint/Swatch;

    move-result-object v5

    iget-boolean v6, p0, Lorg/telegram/ui/Components/PhotoPaintView;->selectedStroke:Z

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;ILjava/lang/String;Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->getPaintingSize()Lorg/telegram/ui/Components/Size;

    move-result-object v1

    iget v1, v1, Lorg/telegram/ui/Components/Size;->width:F

    const/high16 v2, 0x41a00000    # 20.0f

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setMaxWidth(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    const/4 v2, -0x2

    const/high16 v3, -0x40000000    # -2.0f

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PhotoPaintView;->registerRemovalUndo(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->editSelectedTextEntity()V

    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private detectFaces()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->queue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Components/PhotoPaintView$28;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoPaintView$28;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method private duplicateSelectedEntity()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/PhotoPaintView;->startPositionRelativeToEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Lorg/telegram/ui/Components/Point;

    move-result-object v2

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v1, v1, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    if-eqz v1, :cond_2

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    invoke-direct {v1, v3, v0, v2}, Lorg/telegram/ui/Components/Paint/Views/StickerView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Paint/Views/StickerView;Lorg/telegram/ui/Components/Point;)V

    invoke-virtual {v1, p0}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->addView(Landroid/view/View;)V

    move-object v0, v1

    :cond_1
    :goto_1
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PhotoPaintView;->registerRemovalUndo(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->updateSettingsButton()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v1, v1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v1, :cond_1

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-direct {v1, v3, v0, v2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Paint/Views/TextPaintView;Lorg/telegram/ui/Components/Point;)V

    invoke-virtual {v1, p0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setDelegate(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->getPaintingSize()Lorg/telegram/ui/Components/Size;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/Components/Size;->width:F

    const/high16 v2, 0x41a00000    # 20.0f

    sub-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setMaxWidth(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    const/4 v2, -0x2

    const/high16 v3, -0x40000000    # -2.0f

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v1

    goto :goto_1
.end method

.method private editSelectedTextEntity()V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v0, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->editingText:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->curtainView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->initialText:Ljava/lang/String;

    iput-boolean v5, p0, Lorg/telegram/ui/Components/PhotoPaintView;->editingText:Z

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getPosition()Lorg/telegram/ui/Components/Point;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->editedTextPosition:Lorg/telegram/ui/Components/Point;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getRotation()F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->editedTextRotation:F

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getScale()F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->editedTextScale:F

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->centerPositionForEntity()Lorg/telegram/ui/Components/Point;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setPosition(Lorg/telegram/ui/Components/Point;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setRotation(F)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setScale(F)V

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->undoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v2, "PaintText"

    const v3, 0x7f0803ef

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->toolsView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/PhotoPaintView;->setColorPickerVisibilitySlide(Z)V

    invoke-direct {p0, v5, v0}, Lorg/telegram/ui/Components/PhotoPaintView;->setTextDimVisibility(ZLorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->beginEditing()V

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFocusedView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInputFromWindow(Landroid/os/IBinder;II)V

    goto :goto_0
.end method

.method private getFrameRotation()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->orientation:I

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x3

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method private getPaintingSize()Lorg/telegram/ui/Components/Size;
    .locals 7

    const/high16 v6, 0x44a00000    # 1280.0f

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->paintingSize:Lorg/telegram/ui/Components/Size;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->paintingSize:Lorg/telegram/ui/Components/Size;

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->isSidewardOrientation()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->isSidewardOrientation()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    :goto_2
    new-instance v2, Lorg/telegram/ui/Components/Size;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/Size;-><init>(FF)V

    iput v6, v2, Lorg/telegram/ui/Components/Size;->width:F

    iget v3, v2, Lorg/telegram/ui/Components/Size;->width:F

    mul-float/2addr v3, v1

    div-float/2addr v3, v0

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v3, v4

    iput v3, v2, Lorg/telegram/ui/Components/Size;->height:F

    iget v3, v2, Lorg/telegram/ui/Components/Size;->height:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_1

    iput v6, v2, Lorg/telegram/ui/Components/Size;->height:F

    iget v3, v2, Lorg/telegram/ui/Components/Size;->height:F

    mul-float/2addr v0, v3

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, v2, Lorg/telegram/ui/Components/Size;->width:F

    :cond_1
    iput-object v2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->paintingSize:Lorg/telegram/ui/Components/Size;

    move-object v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    goto :goto_2
.end method

.method private getRandomFaceWithVacantAnchor(IJLorg/telegram/tgnet/TLRPC$TL_maskCoords;)Lorg/telegram/ui/Components/Paint/PhotoFace;
    .locals 10

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    const/4 v1, 0x3

    if-gt p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->faces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    move-object v2, v0

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->faces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    sget-object v1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v9}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v1

    move v7, v1

    move v8, v9

    :goto_1
    if-lez v8, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->faces:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Paint/PhotoFace;

    move-object v1, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/PhotoPaintView;->isFaceAnchorOccupied(Lorg/telegram/ui/Components/Paint/PhotoFace;IJLorg/telegram/tgnet/TLRPC$TL_maskCoords;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v1, v7, 0x1

    rem-int/2addr v1, v9

    add-int/lit8 v2, v8, -0x1

    move v7, v1

    move v8, v2

    goto :goto_1

    :cond_3
    move-object v2, v0

    goto :goto_0
.end method

.method private hasChanges()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/UndoStore;->canUndo()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->entitiesCount()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFaceAnchorOccupied(Lorg/telegram/ui/Components/Paint/PhotoFace;IJLorg/telegram/tgnet/TLRPC$TL_maskCoords;)Z
    .locals 11

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Paint/PhotoFace;->getPointForAnchor(I)Lorg/telegram/ui/Components/Point;

    move-result-object v4

    if-nez v4, :cond_1

    move v2, v3

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/Paint/PhotoFace;->getWidthForAnchor(I)F

    move-result v0

    const v1, 0x3f8ccccd    # 1.1f

    mul-float v5, v0, v1

    move v1, v2

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v6, v0, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    if-nez v6, :cond_3

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getAnchor()I

    move-result v6

    if-ne v6, p2, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getPosition()Lorg/telegram/ui/Components/Point;

    move-result-object v6

    iget v7, v6, Lorg/telegram/ui/Components/Point;->x:F

    iget v8, v4, Lorg/telegram/ui/Components/Point;->x:F

    sub-float/2addr v7, v8

    float-to-double v8, v7

    iget v6, v6, Lorg/telegram/ui/Components/Point;->y:F

    iget v7, v4, Lorg/telegram/ui/Components/Point;->y:F

    sub-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v0, p3, v8

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->faces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_2

    :cond_4
    cmpg-float v0, v6, v5

    if-gez v0, :cond_2

    move v2, v3

    goto :goto_0
.end method

.method private isSidewardOrientation()Z
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->orientation:I

    rem-int/lit16 v0, v0, 0x168

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->orientation:I

    rem-int/lit16 v0, v0, 0x168

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mirrorSticker()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v0, v0, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->mirror()V

    :cond_0
    return-void
.end method

.method private openStickersView()V
    .locals 4

    const/4 v2, -0x1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->stickersView:Lorg/telegram/ui/Components/StickerMasksView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->stickersView:Lorg/telegram/ui/Components/StickerMasksView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickerMasksView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->pickingSticker:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->stickersView:Lorg/telegram/ui/Components/StickerMasksView;

    if-nez v0, :cond_1

    new-instance v0, Lorg/telegram/ui/Components/StickerMasksView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/StickerMasksView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->stickersView:Lorg/telegram/ui/Components/StickerMasksView;

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->stickersView:Lorg/telegram/ui/Components/StickerMasksView;

    new-instance v1, Lorg/telegram/ui/Components/PhotoPaintView$16;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoPaintView$16;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/StickerMasksView;->setListener(Lorg/telegram/ui/Components/StickerMasksView$Listener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->stickersView:Lorg/telegram/ui/Components/StickerMasksView;

    const/16 v1, 0x33

    invoke-static {v2, v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/PhotoPaintView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->stickersView:Lorg/telegram/ui/Components/StickerMasksView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/StickerMasksView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->stickersView:Lorg/telegram/ui/Components/StickerMasksView;

    const-string/jumbo v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->undoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->updateStickersTitle()V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private registerRemovalUndo(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getUUID()Ljava/util/UUID;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/PhotoPaintView$18;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Components/PhotoPaintView$18;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Paint/UndoStore;->registerUndo(Ljava/util/UUID;Ljava/lang/Runnable;)V

    return-void
.end method

.method private removeEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->deselect()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->updateSettingsButton()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/UndoStore;->unregisterUndo(Ljava/util/UUID;)V

    return-void
.end method

.method private selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-eqz v2, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-ne v0, p1, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->editingText:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PhotoPaintView;->showMenuForEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->deselect()V

    move v0, v1

    :cond_2
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-eqz v2, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->select(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->bringViewToFront(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v0, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getSwatch()Lorg/telegram/ui/Components/Paint/Swatch;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/PhotoPaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    :cond_3
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->updateSettingsButton()V

    goto :goto_0

    :cond_4
    move v1, v0

    goto :goto_1
.end method

.method private setBrush(I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->brushes:[Lorg/telegram/ui/Components/Paint/Brush;

    iput p1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentBrush:I

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->setBrush(Lorg/telegram/ui/Components/Paint/Brush;)V

    return-void
.end method

.method private setColorPickerVisibilityFade(Z)V
    .locals 8

    const-wide/16 v6, 0xc8

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPicker:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    const-string/jumbo v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPicker:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->getAlpha()F

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPickerAnimator:Landroid/animation/Animator;

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPickerAnimator:Landroid/animation/Animator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPickerAnimator:Landroid/animation/Animator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPickerAnimator:Landroid/animation/Animator;

    new-instance v1, Lorg/telegram/ui/Components/PhotoPaintView$13;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoPaintView$13;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPickerAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPickerAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPickerAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPickerAnimator:Landroid/animation/Animator;

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPicker:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->setAlpha(F)V

    goto :goto_0
.end method

.method private setColorPickerVisibilitySlide(Z)V
    .locals 7

    const/high16 v6, 0x42700000    # 60.0f

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPicker:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    const-string/jumbo v3, "translationX"

    const/4 v0, 0x2

    new-array v4, v0, [F

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    :goto_0
    aput v0, v4, v5

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    :goto_1
    aput v1, v4, v0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    goto :goto_1
.end method

.method private setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    iget v1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    iget v1, p1, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->setBrushSize(F)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPicker:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->setSwatch(Lorg/telegram/ui/Components/Paint/Swatch;)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v0, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setSwatch(Lorg/telegram/ui/Components/Paint/Swatch;)V

    :cond_1
    return-void
.end method

.method private setDimVisibility(Z)V
    .locals 4

    const/4 v2, 0x2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->dimView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->dimView:Landroid/widget/FrameLayout;

    const-string/jumbo v1, "alpha"

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    :goto_0
    new-instance v1, Lorg/telegram/ui/Components/PhotoPaintView$14;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/PhotoPaintView$14;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->dimView:Landroid/widget/FrameLayout;

    const-string/jumbo v1, "alpha"

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private setMenuItemEnabled(Z)V
    .locals 2

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->undoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->undoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setEnabled(Z)V

    return-void

    :cond_0
    const v0, 0x3e99999a    # 0.3f

    goto :goto_0
.end method

.method private setStroke(Z)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/high16 v3, -0x1000000

    iput-boolean p1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->selectedStroke:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v0, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPicker:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->getSwatch()Lorg/telegram/ui/Components/Paint/Swatch;

    move-result-object v0

    if-eqz p1, :cond_2

    iget v1, v0, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    if-ne v1, v4, :cond_2

    new-instance v1, Lorg/telegram/ui/Components/Paint/Swatch;

    const v2, 0x3f59999a    # 0.85f

    iget v0, v0, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    invoke-direct {v1, v3, v2, v0}, Lorg/telegram/ui/Components/Paint/Swatch;-><init>(IFF)V

    invoke-direct {p0, v1, v5}, Lorg/telegram/ui/Components/PhotoPaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setStroke(Z)V

    :cond_1
    return-void

    :cond_2
    if-nez p1, :cond_0

    iget v1, v0, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    if-ne v1, v3, :cond_0

    new-instance v1, Lorg/telegram/ui/Components/Paint/Swatch;

    const/high16 v2, 0x3f800000    # 1.0f

    iget v0, v0, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    invoke-direct {v1, v4, v2, v0}, Lorg/telegram/ui/Components/Paint/Swatch;-><init>(IFF)V

    invoke-direct {p0, v1, v5}, Lorg/telegram/ui/Components/PhotoPaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    goto :goto_0
.end method

.method private setTextDimVisibility(ZLorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->textDimView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->textDimView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoPaintView;->textDimView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->textDimView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setSelectionVisibility(Z)V

    if-eqz p1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->textDimView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->textDimView:Landroid/widget/FrameLayout;

    const-string/jumbo v1, "alpha"

    new-array v2, v4, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    :goto_1
    new-instance v1, Lorg/telegram/ui/Components/PhotoPaintView$15;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/PhotoPaintView$15;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->textDimView:Landroid/widget/FrameLayout;

    const-string/jumbo v1, "alpha"

    new-array v2, v4, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private showBrushSettings()V
    .locals 6

    new-instance v1, Lorg/telegram/ui/Components/PhotoPaintView$21;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoPaintView$21;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;)V

    const/16 v3, 0x55

    const/4 v4, 0x0

    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    move-object v0, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/PhotoPaintView;->showPopup(Ljava/lang/Runnable;Landroid/view/View;III)V

    return-void
.end method

.method private showMenuForEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 6

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPosition()Lorg/telegram/ui/Components/Point;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/Components/Point;->x:F

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->getScaleX()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v4, v0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPosition()Lorg/telegram/ui/Components/Point;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/Components/Point;->y:F

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getScale()F

    move-result v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->getScaleY()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/high16 v1, 0x42000000    # 32.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v5, v0, v1

    new-instance v1, Lorg/telegram/ui/Components/PhotoPaintView$19;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/PhotoPaintView$19;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    const/16 v3, 0x11

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/PhotoPaintView;->showPopup(Ljava/lang/Runnable;Landroid/view/View;III)V

    return-void
.end method

.method private showPopup(Ljava/lang/Runnable;Landroid/view/View;III)V
    .locals 7

    const/4 v6, -0x2

    const/high16 v5, -0x80000000

    const/high16 v4, 0x447a0000    # 1000.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupRect:Landroid/graphics/Rect;

    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setAnimationEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    new-instance v1, Lorg/telegram/ui/Components/PhotoPaintView$25;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoPaintView$25;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    new-instance v1, Lorg/telegram/ui/Components/PhotoPaintView$26;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoPaintView$26;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setDispatchKeyEventListener(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$OnDispatchKeyEventListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setShowedFromBotton(Z)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->removeInnerViews()V

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-nez v0, :cond_2

    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-direct {v0, v1, v6, v6}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setAnimationEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const v1, 0x7f0c00c6

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setAnimationStyle(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setClippingEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setInputMethodMode(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setSoftInputMode(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    new-instance v1, Lorg/telegram/ui/Components/PhotoPaintView$27;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoPaintView$27;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->measure(II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, p2, p3, p4, p5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->startAnimation()V

    goto/16 :goto_0
.end method

.method private showTextSettings()V
    .locals 6

    new-instance v1, Lorg/telegram/ui/Components/PhotoPaintView$24;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoPaintView$24;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;)V

    const/16 v3, 0x55

    const/4 v4, 0x0

    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    move-object v0, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/PhotoPaintView;->showPopup(Ljava/lang/Runnable;Landroid/view/View;III)V

    return-void
.end method

.method private startPositionRelativeToEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Lorg/telegram/ui/Components/Point;
    .locals 14

    const/4 v3, 0x0

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    const/high16 v10, 0x43480000    # 200.0f

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPosition()Lorg/telegram/ui/Components/Point;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/Point;

    iget v2, v0, Lorg/telegram/ui/Components/Point;->x:F

    add-float/2addr v2, v10

    iget v0, v0, Lorg/telegram/ui/Components/Point;->y:F

    add-float/2addr v0, v10

    invoke-direct {v1, v2, v0}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    :cond_0
    return-object v1

    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->centerPositionForEntity()Lorg/telegram/ui/Components/Point;

    move-result-object v0

    move-object v1, v0

    :goto_0
    move v2, v3

    move v4, v3

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v5, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-nez v5, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPosition()Lorg/telegram/ui/Components/Point;

    move-result-object v0

    iget v5, v0, Lorg/telegram/ui/Components/Point;->x:F

    iget v6, v1, Lorg/telegram/ui/Components/Point;->x:F

    sub-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    iget v0, v0, Lorg/telegram/ui/Components/Point;->y:F

    iget v5, v1, Lorg/telegram/ui/Components/Point;->y:F

    sub-float/2addr v0, v5

    float-to-double v8, v0

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v0, v6

    const/high16 v5, 0x42c80000    # 100.0f

    cmpg-float v0, v0, v5

    if-gez v0, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    if-eqz v4, :cond_0

    new-instance v0, Lorg/telegram/ui/Components/Point;

    iget v2, v1, Lorg/telegram/ui/Components/Point;->x:F

    add-float/2addr v2, v10

    iget v1, v1, Lorg/telegram/ui/Components/Point;->y:F

    add-float/2addr v1, v10

    invoke-direct {v0, v2, v1}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    move-object v1, v0

    goto :goto_0
.end method

.method private updateSettingsButton()V
    .locals 3

    const v0, 0x7f02020f

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v1, v1, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    if-eqz v1, :cond_1

    const v0, 0x7f02020b

    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->paintButton:Landroid/widget/ImageView;

    const v2, 0x7f02020d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPicker:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->setSettingsButtonImage(I)V

    return-void

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v1, v1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v1, :cond_0

    const v0, 0x7f02020c

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->paintButton:Landroid/widget/ImageView;

    const v2, 0x7f02020e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method private updateStickersTitle()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->stickersView:Lorg/telegram/ui/Components/StickerMasksView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->stickersView:Lorg/telegram/ui/Components/StickerMasksView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickerMasksView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->stickersView:Lorg/telegram/ui/Components/StickerMasksView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickerMasksView;->getCurrentType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "PaintStickers"

    const v2, 0x7f0803ee

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "Masks"

    const v2, 0x7f0802ef

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public allowInteraction(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->editingText:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public closeTextEnter(Z)V
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->editingText:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    instance-of v0, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->undoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v2, "PaintDraw"

    const v3, 0x7f0803e9

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->toolsView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/PhotoPaintView;->setColorPickerVisibilitySlide(Z)V

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFocusedView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFocusedView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->endEditing()V

    if-nez p1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->initialText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setText(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->removeView(Landroid/view/View;)V

    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/PhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    :goto_1
    invoke-direct {p0, v4, v0}, Lorg/telegram/ui/Components/PhotoPaintView;->setTextDimVisibility(ZLorg/telegram/ui/Components/Paint/Views/EntityView;)V

    iput-boolean v4, p0, Lorg/telegram/ui/Components/PhotoPaintView;->editingText:Z

    iput-object v5, p0, Lorg/telegram/ui/Components/PhotoPaintView;->initialText:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->curtainView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->editedTextPosition:Lorg/telegram/ui/Components/Point;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setPosition(Lorg/telegram/ui/Components/Point;)V

    iget v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->editedTextRotation:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setRotation(F)V

    iget v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->editedTextScale:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setScale(F)V

    iput-object v5, p0, Lorg/telegram/ui/Components/PhotoPaintView;->editedTextPosition:Lorg/telegram/ui/Components/Point;

    iput v6, p0, Lorg/telegram/ui/Components/PhotoPaintView;->editedTextRotation:F

    iput v6, p0, Lorg/telegram/ui/Components/PhotoPaintView;->editedTextScale:F

    goto :goto_1
.end method

.method public getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 10

    const/4 v9, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->getResultBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->entitiesCount()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move v2, v3

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    instance-of v0, v1, Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPosition()Lorg/telegram/ui/Components/Point;

    move-result-object v6

    iget v6, v6, Lorg/telegram/ui/Components/Point;->x:F

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPosition()Lorg/telegram/ui/Components/Point;

    move-result-object v7

    iget v7, v7, Lorg/telegram/ui/Components/Point;->y:F

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getScaleY()F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {v1}, Landroid/view/View;->getRotation()F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getWidth()I

    move-result v6

    neg-int v6, v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getHeight()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {v5, v6, v0}, Landroid/graphics/Canvas;->translate(FF)V

    instance-of v0, v1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v6, v7}, Lorg/telegram/messenger/Bitmaps;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v1, v3, v3, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5, v0, v9, v1, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v6, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    :goto_2
    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v5}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    :cond_2
    return-object v4
.end method

.method public getCancelTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->cancelTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getColorPicker()Lorg/telegram/ui/Components/Paint/Views/ColorPicker;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPicker:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    return-object v0
.end method

.method public getDoneTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->doneTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getMasks()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$InputDocument;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->getChildCount()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v4, v0, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    if-eqz v4, :cond_2

    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/StickerView;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    if-nez v1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v6, v1, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;->id:J

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v4, v1, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;->access_hash:J

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_2
.end method

.method public getToolsView()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->toolsView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public init()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->setVisibility(I)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->detectFaces()V

    return-void
.end method

.method public maybeShowDismissalAlert(Lorg/telegram/ui/PhotoViewer;Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->editingText:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/PhotoPaintView;->closeTextEnter(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->pickingSticker:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->closeStickersView()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->hasChanges()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_0

    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "DiscardChanges"

    const v2, 0x7f0801da

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string/jumbo v1, "AppName"

    const v2, 0x7f080086

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string/jumbo v1, "OK"

    const v2, 0x7f0803c8

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/PhotoPaintView$12;

    invoke-direct {v2, p0, p3}, Lorg/telegram/ui/Components/PhotoPaintView$12;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string/jumbo v1, "Cancel"

    const v2, 0x7f0800f2

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/PhotoViewer;->showAlertDialog(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)V

    goto :goto_0

    :cond_3
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public onBeganEntityDragging(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PhotoPaintView;->setColorPickerVisibilityFade(Z)V

    return-void
.end method

.method public onEntityLongClicked(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoPaintView;->showMenuForEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onEntitySelected(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    move-result v0

    return v0
.end method

.method public onFinishedEntityDragging(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PhotoPaintView;->setColorPickerVisibilityFade(Z)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    sub-int v3, p4, p2

    sub-int v4, p5, p3

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getMeasuredHeight()I

    move-result v5

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v2, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/ui/Components/PhotoPaintView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/ActionBar;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v0, v2, v6, v7, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->layout(IIII)V

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v1

    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v6, v0, v2

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->isSidewardOrientation()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->isSidewardOrientation()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    :goto_1
    int-to-float v2, v3

    mul-float v7, v2, v1

    div-float/2addr v7, v0

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-float v7, v8

    int-to-float v8, v6

    cmpl-float v7, v7, v8

    if-lez v7, :cond_5

    int-to-float v2, v6

    mul-float/2addr v0, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/RenderView;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v3, v1

    div-int/lit8 v1, v1, 0x2

    int-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v1, v8

    sub-int v2, v4, v5

    const/high16 v7, 0x42400000    # 48.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v2, v7

    iget-object v7, p0, Lorg/telegram/ui/Components/PhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/Paint/RenderView;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v2, v7

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v5

    iget-object v7, p0, Lorg/telegram/ui/Components/PhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/Paint/RenderView;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v1

    iget-object v9, p0, Lorg/telegram/ui/Components/PhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/Paint/RenderView;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v2

    invoke-virtual {v7, v1, v2, v8, v9}, Lorg/telegram/ui/Components/Paint/RenderView;->layout(IIII)V

    iget-object v7, p0, Lorg/telegram/ui/Components/PhotoPaintView;->paintingSize:Lorg/telegram/ui/Components/Size;

    iget v7, v7, Lorg/telegram/ui/Components/Size;->width:F

    div-float/2addr v0, v7

    iget-object v7, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v7, v0}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->setScaleX(F)V

    iget-object v7, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v7, v0}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->setScaleY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    iget-object v7, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v1

    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {v0, v1, v2, v7, v8}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->layout(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->dimView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->dimView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    iget-object v7, p0, Lorg/telegram/ui/Components/PhotoPaintView;->dimView:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v0, v1, v5, v2, v7}, Landroid/widget/FrameLayout;->layout(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    iget-object v7, p0, Lorg/telegram/ui/Components/PhotoPaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v0, v1, v5, v2, v7}, Landroid/widget/FrameLayout;->layout(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPicker:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPicker:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->getMeasuredWidth()I

    move-result v2

    iget-object v7, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPicker:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v0, v1, v5, v2, v7}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->layout(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->toolsView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->toolsView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    sub-int v2, v4, v2

    iget-object v7, p0, Lorg/telegram/ui/Components/PhotoPaintView;->toolsView:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v0, v1, v2, v7, v4}, Landroid/widget/FrameLayout;->layout(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->curtainView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/widget/FrameLayout;->layout(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->stickersView:Lorg/telegram/ui/Components/StickerMasksView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->stickersView:Lorg/telegram/ui/Components/StickerMasksView;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->stickersView:Lorg/telegram/ui/Components/StickerMasksView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/StickerMasksView;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoPaintView;->stickersView:Lorg/telegram/ui/Components/StickerMasksView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/StickerMasksView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v5

    invoke-virtual {v0, v1, v5, v2, v3}, Lorg/telegram/ui/Components/StickerMasksView;->layout(IIII)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updateSelectionView()V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->getLeft()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->getTop()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoPaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setOffset(II)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    goto/16 :goto_1

    :cond_4
    int-to-float v0, v3

    sub-int v1, v4, v1

    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    goto/16 :goto_1

    :cond_5
    move v0, v2

    goto/16 :goto_2
.end method

.method protected onMeasure(II)V
    .locals 13

    const/high16 v12, -0x80000000

    const/high16 v11, 0x42400000    # 48.0f

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v4, v1}, Lorg/telegram/ui/Components/PhotoPaintView;->setMeasuredDimension(II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v1, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, p1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->measure(II)V

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v2

    sub-int v5, v0, v2

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int v6, v5, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->isSidewardOrientation()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoPaintView;->isSidewardOrientation()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    :goto_1
    int-to-float v3, v4

    mul-float v2, v3, v1

    div-float/2addr v2, v0

    float-to-double v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-float v2, v8

    int-to-float v7, v6

    cmpl-float v7, v2, v7

    if-lez v7, :cond_4

    int-to-float v2, v6

    mul-float/2addr v0, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    move v1, v0

    move v0, v2

    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    float-to-int v1, v1

    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    float-to-int v0, v0

    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v2, v1, v0}, Lorg/telegram/ui/Components/Paint/RenderView;->measure(II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->paintingSize:Lorg/telegram/ui/Components/Size;

    iget v1, v1, Lorg/telegram/ui/Components/Size;->width:F

    float-to-int v1, v1

    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->paintingSize:Lorg/telegram/ui/Components/Size;

    iget v2, v2, Lorg/telegram/ui/Components/Size;->height:F

    float-to-int v2, v2

    invoke-static {v2, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->measure(II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->dimView:Landroid/widget/FrameLayout;

    invoke-static {v6, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->measure(II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    invoke-static {v6, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->measure(II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->colorPicker:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    invoke-static {v4, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v6, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->measure(II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->toolsView:Landroid/widget/FrameLayout;

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->measure(II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->stickersView:Lorg/telegram/ui/Components/StickerMasksView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->stickersView:Lorg/telegram/ui/Components/StickerMasksView;

    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/StickerMasksView;->measure(II)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    goto/16 :goto_1

    :cond_3
    int-to-float v0, v4

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    goto/16 :goto_1

    :cond_4
    move v0, v2

    move v1, v3

    goto/16 :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoPaintView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/PhotoPaintView;->editingText:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/PhotoPaintView;->closeTextEnter(Z)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/PhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shutdown()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->shutdown()V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->selectionContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView;->queue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Components/PhotoPaintView$11;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoPaintView$11;-><init>(Lorg/telegram/ui/Components/PhotoPaintView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method
