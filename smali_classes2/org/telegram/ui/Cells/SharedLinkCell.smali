.class public Lorg/telegram/ui/Cells/SharedLinkCell;
.super Landroid/widget/FrameLayout;
.source "SharedLinkCell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/SharedLinkCell$SharedLinkCellDelegate;
    }
.end annotation


# instance fields
.field private checkBox:Lorg/telegram/ui/Components/CheckBox;

.field private delegate:Lorg/telegram/ui/Cells/SharedLinkCell$SharedLinkCellDelegate;

.field private description2Y:I

.field private descriptionLayout:Landroid/text/StaticLayout;

.field private descriptionLayout2:Landroid/text/StaticLayout;

.field private descriptionTextPaint:Landroid/text/TextPaint;

.field private descriptionY:I

.field private drawLinkImageView:Z

.field private letterDrawable:Lorg/telegram/ui/Components/LetterDrawable;

.field private linkImageView:Lorg/telegram/messenger/ImageReceiver;

.field private linkLayout:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/StaticLayout;",
            ">;"
        }
    .end annotation
.end field

.field private linkPreviewPressed:Z

.field private linkY:I

.field links:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private message:Lorg/telegram/messenger/MessageObject;

.field private needDivider:Z

.field private pressedLink:I

.field private titleLayout:Landroid/text/StaticLayout;

.field private titleTextPaint:Landroid/text/TextPaint;

.field private titleY:I

.field private urlPath:Lorg/telegram/ui/Components/LinkPath;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/4 v3, 0x1

    const/high16 v1, 0x41d80000    # 27.0f

    const/high16 v2, 0x41800000    # 16.0f

    const/high16 v4, 0x42300000    # 44.0f

    const/4 v6, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lorg/telegram/ui/Components/LinkPath;

    invoke-direct {v0}, Lorg/telegram/ui/Components/LinkPath;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->urlPath:Lorg/telegram/ui/Components/LinkPath;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->links:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkLayout:Ljava/util/ArrayList;

    const/high16 v0, 0x40e00000    # 7.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->titleY:I

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionY:I

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->description2Y:I

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->titleTextPaint:Landroid/text/TextPaint;

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->titleTextPaint:Landroid/text/TextPaint;

    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->titleTextPaint:Landroid/text/TextPaint;

    const-string/jumbo v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionTextPaint:Landroid/text/TextPaint;

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->titleTextPaint:Landroid/text/TextPaint;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionTextPaint:Landroid/text/TextPaint;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/SharedLinkCell;->setWillNotDraw(Z)V

    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    new-instance v0, Lorg/telegram/ui/Components/LetterDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/LetterDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->letterDrawable:Lorg/telegram/ui/Components/LetterDrawable;

    new-instance v0, Lorg/telegram/ui/Components/CheckBox;

    const v1, 0x7f020235

    invoke-direct {v0, p1, v1}, Lorg/telegram/ui/Components/CheckBox;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const-string/jumbo v1, "checkbox"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "checkboxCheck"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/CheckBox;->setColor(II)V

    iget-object v7, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/16 v0, 0x16

    const/high16 v1, 0x41b00000    # 22.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    :goto_0
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_1

    move v3, v6

    :goto_1
    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_2

    move v5, v4

    :goto_2
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/SharedLinkCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1

    :cond_2
    move v5, v6

    goto :goto_2
.end method


# virtual methods
.method public getLink(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->links:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->links:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getMessage()Lorg/telegram/messenger/MessageObject;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->drawLinkImageView:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->drawLinkImageView:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v2, 0x0

    const/high16 v1, 0x41000000    # 8.0f

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->titleLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->titleY:I

    int-to-float v3, v3

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->titleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionTextPaint:Landroid/text/TextPaint;

    const-string/jumbo v3, "windowBackgroundWhiteBlackText"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionY:I

    int-to-float v3, v3

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout2:Landroid/text/StaticLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionTextPaint:Landroid/text/TextPaint;

    const-string/jumbo v3, "windowBackgroundWhiteBlackText"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->description2Y:I

    int-to-float v3, v3

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout2:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkLayout:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionTextPaint:Landroid/text/TextPaint;

    const-string/jumbo v3, "windowBackgroundWhiteLinkText"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setColor(I)V

    move v3, v2

    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkLayout:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkLayout:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    if-lez v4, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_8

    move v4, v1

    :goto_4
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkY:I

    add-int/2addr v5, v3

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget v4, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->pressedLink:I

    if-ne v4, v2, :cond_3

    iget-object v4, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->urlPath:Lorg/telegram/ui/Components/LinkPath;

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->linkSelectionPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_3
    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v0

    add-int/2addr v3, v0

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_5
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v0, v0

    goto/16 :goto_0

    :cond_6
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v0, v0

    goto/16 :goto_1

    :cond_7
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v0, v0

    goto :goto_2

    :cond_8
    sget v4, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v4, v4

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->letterDrawable:Lorg/telegram/ui/Components/LetterDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/LetterDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->drawLinkImageView:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    :cond_a
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->needDivider:Z

    if-eqz v0, :cond_b

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_c

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/SharedLinkCell;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/SharedLinkCell;->getMeasuredWidth()I

    move-result v0

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/SharedLinkCell;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_b
    :goto_5
    return-void

    :cond_c
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/SharedLinkCell;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/SharedLinkCell;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/SharedLinkCell;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_5
.end method

.method protected onMeasure(II)V
    .locals 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->drawLinkImageView:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout:Landroid/text/StaticLayout;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->titleLayout:Landroid/text/StaticLayout;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout2:Landroid/text/StaticLayout;

    iget v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionY:I

    iput v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->description2Y:I

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkLayout:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->links:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v3, v0, v1

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v6, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v6, :cond_2f

    iget-object v6, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_webPage;

    if-eqz v6, :cond_2f

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessageObject;->generateThumbs(Z)V

    :cond_0
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->title:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->site_name:Ljava/lang/String;

    :cond_1
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->description:Ljava/lang/String;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    move v8, v0

    move-object v0, v4

    move-object v13, v2

    move-object v2, v1

    move-object v1, v13

    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v4, :cond_2e

    iget-object v4, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2e

    const/4 v4, 0x0

    move v6, v4

    move-object v4, v5

    move-object v5, v2

    move-object v2, v0

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_14

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    if-lez v7, :cond_2b

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    if-ltz v7, :cond_2b

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget-object v9, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v9, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v7, v9, :cond_3

    move-object v0, v4

    move-object v4, v5

    :goto_3
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move-object v5, v4

    move-object v4, v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget v7, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v9, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v7, v9

    iget-object v9, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v9, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-le v7, v9, :cond_4

    iget-object v7, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v7, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    iget v9, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    sub-int/2addr v7, v9

    iput v7, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    :cond_4
    if-nez v6, :cond_6

    if-eqz v1, :cond_6

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    if-nez v7, :cond_5

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    iget-object v9, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v9, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-eq v7, v9, :cond_6

    :cond_5
    iget-object v7, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v7, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_e

    if-nez v2, :cond_6

    iget-object v4, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    :cond_6
    :goto_4
    const/4 v7, 0x0

    :try_start_0
    instance-of v9, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityTextUrl;

    if-nez v9, :cond_7

    instance-of v9, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityUrl;

    if-eqz v9, :cond_10

    :cond_7
    instance-of v7, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityUrl;

    if-eqz v7, :cond_f

    iget-object v7, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v7, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    iget v9, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v11, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v10, v11

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    :goto_5
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move-result v9

    if-nez v9, :cond_2c

    :cond_8
    :try_start_1
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v5

    if-nez v5, :cond_9

    move-object v5, v7

    :cond_9
    if-eqz v5, :cond_b

    const/16 v9, 0x2e

    :try_start_2
    invoke-virtual {v5, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    if-ltz v9, :cond_b

    const/4 v10, 0x0

    invoke-virtual {v5, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v9, 0x2e

    invoke-virtual {v5, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    if-ltz v9, :cond_a

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    :cond_a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_b
    iget v9, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    if-nez v9, :cond_c

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    iget-object v9, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v9, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-eq v0, v9, :cond_2d

    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    :goto_6
    move-object v2, v0

    move-object v0, v5

    :goto_7
    if-eqz v7, :cond_d

    :try_start_3
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v9, "http"

    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_13

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v9, "mailto"

    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_13

    iget-object v5, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->links:Ljava/util/ArrayList;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "http://"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_d
    :goto_8
    move-object v13, v4

    move-object v4, v0

    move-object v0, v13

    goto/16 :goto_3

    :cond_e
    iget-object v4, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    goto/16 :goto_4

    :cond_f
    :try_start_4
    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->url:Ljava/lang/String;

    goto/16 :goto_5

    :cond_10
    instance-of v9, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityEmail;

    if-eqz v9, :cond_2c

    if-eqz v5, :cond_11

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_2c

    :cond_11
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mailto:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v9, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v11, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v12, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v9, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v11, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v12, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iget v9, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    if-nez v9, :cond_12

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    iget-object v9, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v9, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-eq v0, v9, :cond_2c

    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    move-object v0, v5

    goto/16 :goto_7

    :cond_13
    :try_start_5
    iget-object v5, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->links:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_8

    :catch_0
    move-exception v5

    :goto_9
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move-object v13, v4

    move-object v4, v0

    move-object v0, v13

    goto/16 :goto_3

    :cond_14
    move-object v9, v4

    move-object v10, v2

    move-object v11, v5

    :goto_a
    if-eqz v1, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->links:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->links:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    if-eqz v11, :cond_16

    :try_start_6
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->titleTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v11}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/16 v1, 0xa

    const/16 v2, 0x20

    invoke-virtual {v11, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->titleTextPaint:Landroid/text/TextPaint;

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v1, v2, v0, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->titleTextPaint:Landroid/text/TextPaint;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->titleLayout:Landroid/text/StaticLayout;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :goto_b
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->letterDrawable:Lorg/telegram/ui/Components/LetterDrawable;

    invoke-virtual {v0, v11}, Lorg/telegram/ui/Components/LetterDrawable;->setTitle(Ljava/lang/String;)V

    :cond_16
    if-eqz v10, :cond_17

    :try_start_7
    iget-object v2, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionTextPaint:Landroid/text/TextPaint;

    const/4 v5, 0x0

    const/4 v6, 0x3

    move-object v1, v10

    move v4, v3

    invoke-static/range {v1 .. v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->generateStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;IIII)Landroid/text/StaticLayout;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout:Landroid/text/StaticLayout;

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_17

    iget v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionY:I

    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout:Landroid/text/StaticLayout;

    iget-object v2, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v1

    add-int/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->description2Y:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :cond_17
    :goto_c
    if-eqz v9, :cond_18

    :try_start_8
    iget-object v2, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionTextPaint:Landroid/text/TextPaint;

    const/4 v5, 0x0

    const/4 v6, 0x3

    move-object v1, v9

    move v4, v3

    invoke-static/range {v1 .. v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->generateStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;IIII)Landroid/text/StaticLayout;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout2:Landroid/text/StaticLayout;

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout2:Landroid/text/StaticLayout;

    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout2:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineBottom(I)I

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_18

    iget v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->description2Y:I

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->description2Y:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :cond_18
    :goto_d
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->links:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x0

    move v9, v0

    :goto_e
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->links:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_1a

    :try_start_9
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->links:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    const/16 v2, 0xa

    const/16 v4, 0x20

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionTextPaint:Landroid/text/TextPaint;

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v2, v1, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionTextPaint:Landroid/text/TextPaint;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iget v1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->description2Y:I

    iput v1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkY:I

    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout2:Landroid/text/StaticLayout;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout2:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    if-eqz v1, :cond_19

    iget v1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkY:I

    iget-object v2, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout2:Landroid/text/StaticLayout;

    iget-object v4, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout2:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkY:I

    :cond_19
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkLayout:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :goto_f
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_e

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_b

    :catch_2
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_c

    :catch_3
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_d

    :catch_4
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_f

    :cond_1a
    const/high16 v0, 0x42500000    # 52.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_23

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr v0, v4

    :goto_10
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->letterDrawable:Lorg/telegram/ui/Components/LetterDrawable;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int v3, v0, v4

    const/high16 v5, 0x42780000    # 62.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v1, v0, v2, v3, v5}, Lorg/telegram/ui/Components/LetterDrawable;->setBounds(IIII)V

    if-eqz v8, :cond_1e

    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-static {v1, v4, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v5

    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    const/16 v2, 0x50

    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    if-ne v1, v5, :cond_2a

    const/4 v1, 0x0

    move-object v3, v1

    :goto_11
    const/4 v1, -0x1

    iput v1, v5, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    if-eqz v3, :cond_1b

    const/4 v1, -0x1

    iput v1, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    :cond_1b
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v0, v2, v4, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(IIII)V

    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    const/4 v2, 0x1

    invoke-static {v5, v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1c

    const/4 v0, 0x0

    :cond_1c
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v6, "%d_%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    invoke-static {v2, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_1d

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/MediaController;->canDownloadMedia(I)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/FileLoader;->isLoadingFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    :cond_1d
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v3, :cond_24

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    :goto_12
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v6, "%d_%d_b"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v9

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V

    :goto_13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->drawLinkImageView:Z

    :cond_1e
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->titleLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->titleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->titleLayout:Landroid/text/StaticLayout;

    iget-object v2, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->titleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1f
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_20

    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout:Landroid/text/StaticLayout;

    iget-object v2, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_20
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout2:Landroid/text/StaticLayout;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout2:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout2:Landroid/text/StaticLayout;

    iget-object v2, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout2:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->descriptionLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_21

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    :cond_21
    const/4 v1, 0x0

    move v2, v0

    :goto_14
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkLayout:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_27

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkLayout:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    if-lez v3, :cond_22

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v0

    add-int/2addr v2, v0

    :cond_22
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_14

    :cond_23
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto/16 :goto_10

    :cond_24
    const/4 v3, 0x0

    goto/16 :goto_12

    :cond_25
    if-eqz v3, :cond_26

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v6, "%d_%d_b"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v9

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V

    goto/16 :goto_13

    :cond_26
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkImageView:Lorg/telegram/messenger/ImageReceiver;

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_13

    :cond_27
    if-eqz v8, :cond_28

    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_28
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/high16 v1, 0x41b00000    # 22.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/high16 v3, 0x41b00000    # 22.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/CheckBox;->measure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/high16 v0, 0x42900000    # 72.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->needDivider:Z

    if-eqz v0, :cond_29

    const/4 v0, 0x1

    :goto_15
    add-int/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Cells/SharedLinkCell;->setMeasuredDimension(II)V

    return-void

    :cond_29
    const/4 v0, 0x0

    goto :goto_15

    :catch_5
    move-exception v0

    move-object v13, v0

    move-object v0, v5

    move-object v5, v13

    goto/16 :goto_9

    :catch_6
    move-exception v0

    move-object v5, v0

    move-object v0, v7

    goto/16 :goto_9

    :cond_2a
    move-object v3, v1

    goto/16 :goto_11

    :cond_2b
    move-object v0, v4

    move-object v4, v5

    goto/16 :goto_3

    :cond_2c
    move-object v0, v5

    goto/16 :goto_7

    :cond_2d
    move-object v0, v2

    goto/16 :goto_6

    :cond_2e
    move-object v9, v5

    move-object v10, v0

    move-object v11, v2

    goto/16 :goto_a

    :cond_2f
    move v8, v0

    move-object v0, v2

    move-object v2, v4

    goto/16 :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    const/4 v5, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkLayout:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->delegate:Lorg/telegram/ui/Cells/SharedLinkCell$SharedLinkCellDelegate;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->delegate:Lorg/telegram/ui/Cells/SharedLinkCell$SharedLinkCellDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Cells/SharedLinkCell$SharedLinkCellDelegate;->canPerformActions()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkPreviewPressed:Z

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_a

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v6, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v7, v0

    move v1, v2

    move v3, v2

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkLayout:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_e

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkLayout:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    if-lez v4, :cond_9

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v8

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_4

    const/high16 v4, 0x41000000    # 8.0f

    :goto_1
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v9, v6

    int-to-float v10, v4

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v11

    add-float/2addr v10, v11

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_8

    int-to-float v9, v6

    int-to-float v4, v4

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v10

    add-float/2addr v4, v10

    cmpg-float v4, v9, v4

    if-gtz v4, :cond_8

    iget v4, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkY:I

    add-int/2addr v4, v3

    if-lt v7, v4, :cond_8

    iget v4, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkY:I

    add-int/2addr v4, v3

    add-int/2addr v4, v8

    if-gt v7, v4, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/SharedLinkCell;->resetPressedLink()V

    iput v1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->pressedLink:I

    iput-boolean v5, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkPreviewPressed:Z

    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->urlPath:Lorg/telegram/ui/Components/LinkPath;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v3, v4}, Lorg/telegram/ui/Components/LinkPath;->setCurrentLayout(Landroid/text/StaticLayout;IF)V

    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->urlPath:Lorg/telegram/ui/Components/LinkPath;

    invoke-virtual {v0, v1, v3, v4}, Landroid/text/StaticLayout;->getSelectionPath(IILandroid/graphics/Path;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move v1, v5

    move v0, v5

    :goto_3
    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/SharedLinkCell;->resetPressedLink()V

    :cond_1
    :goto_4
    if-nez v0, :cond_2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v2, v5

    :cond_3
    return v2

    :cond_4
    sget v4, Lorg/telegram/messenger/AndroidUtilities;->leftBaseline:I

    int-to-float v4, v4

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkPreviewPressed:Z

    if-eqz v0, :cond_d

    :try_start_1
    iget v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->pressedLink:I

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    :goto_5
    if-eqz v0, :cond_7

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v1, v3, :cond_7

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->embed_url:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->embed_url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->delegate:Lorg/telegram/ui/Cells/SharedLinkCell$SharedLinkCellDelegate;

    invoke-interface {v1, v0}, Lorg/telegram/ui/Cells/SharedLinkCell$SharedLinkCellDelegate;->needOpenWebView(Lorg/telegram/tgnet/TLRPC$WebPage;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_6
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/SharedLinkCell;->resetPressedLink()V

    move v1, v5

    move v0, v5

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    :cond_7
    :try_start_2
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/SharedLinkCell;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->links:Ljava/util/ArrayList;

    iget v3, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->pressedLink:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_8
    add-int/2addr v3, v8

    :cond_9
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/SharedLinkCell;->resetPressedLink()V

    move v0, v2

    goto :goto_4

    :cond_b
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/SharedLinkCell;->resetPressedLink()V

    :cond_c
    move v0, v2

    goto :goto_4

    :cond_d
    move v1, v5

    move v0, v2

    goto/16 :goto_3

    :cond_e
    move v1, v2

    move v0, v2

    goto/16 :goto_3
.end method

.method protected resetPressedLink()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->pressedLink:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->linkPreviewPressed:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/SharedLinkCell;->invalidate()V

    return-void
.end method

.method public setChecked(ZZ)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/CheckBox;->setChecked(ZZ)V

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Cells/SharedLinkCell$SharedLinkCellDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->delegate:Lorg/telegram/ui/Cells/SharedLinkCell$SharedLinkCellDelegate;

    return-void
.end method

.method public setLink(Lorg/telegram/messenger/MessageObject;Z)V
    .locals 0

    iput-boolean p2, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->needDivider:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/SharedLinkCell;->resetPressedLink()V

    iput-object p1, p0, Lorg/telegram/ui/Cells/SharedLinkCell;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/SharedLinkCell;->requestLayout()V

    return-void
.end method
