.class public Lorg/telegram/ui/Components/ColorSelectorDialog;
.super Landroid/app/Dialog;
.source "ColorSelectorDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lorg/telegram/ui/Components/ColorPickerView$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;
    }
.end annotation


# static fields
.field public static final BOTTOM:I = 0x1

.field public static final CENTER:I = 0x0

.field public static final LEFT:I = 0x4

.field public static final RIGHT:I = 0x2

.field public static final TOP:I = 0x3


# instance fields
.field private alpha:Z

.field private btnNew:Landroid/widget/Button;

.field private btnOld:Landroid/widget/Button;

.field private color:I

.field private content:Lorg/telegram/ui/Components/ColorSelectorView;

.field private history:Lorg/telegram/ui/Components/HistorySelectorView;

.field private initColor:I

.field private listener:Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;

.field private offset:I

.field private side:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    const v0, 0x7f0c0166

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput p2, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->initColor:I

    iput p3, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->side:I

    iget v0, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->offset:I

    iput v0, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->offset:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V
    .locals 1

    const v0, 0x7f0c0166

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->listener:Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;

    iput p3, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->initColor:I

    iput p4, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->side:I

    iput p5, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->offset:I

    iput-boolean p6, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->alpha:Z

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ColorSelectorDialog;)Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->listener:Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ColorSelectorDialog;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->color:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/ColorSelectorDialog;)Lorg/telegram/ui/Components/HistorySelectorView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->history:Lorg/telegram/ui/Components/HistorySelectorView;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/ColorSelectorDialog;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ColorSelectorDialog;->colorChangedInternal(I)V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/ColorSelectorDialog;)Lorg/telegram/ui/Components/ColorSelectorView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->content:Lorg/telegram/ui/Components/ColorSelectorView;

    return-object v0
.end method

.method private adjustAlpha(IZ)I
    .locals 4

    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    :goto_0
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0xff

    goto :goto_0
.end method

.method private colorChangedInternal(I)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->btnNew:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->btnNew:Landroid/widget/Button;

    xor-int/lit8 v1, p1, -0x1

    const/high16 v2, -0x1000000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->alpha:Z

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/ColorSelectorDialog;->adjustAlpha(IZ)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->color:I

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->color:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->listener:Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->listener:Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;

    iget v1, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->color:I

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;->colorChanged(I)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->history:Lorg/telegram/ui/Components/HistorySelectorView;

    iget v1, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->color:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/HistorySelectorView;->selectColor(I)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ColorSelectorDialog;->dismiss()V

    return-void
.end method

.method public onColorChanged(I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->listener:Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->listener:Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ColorSelectorDialog;->getColor()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;->colorChanged(I)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040021

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ColorSelectorDialog;->setContentView(I)V

    iget v0, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->side:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ColorSelectorDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ColorSelectorDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->offset:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ColorSelectorDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    :goto_0
    const v0, 0x7f1000a9

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ColorSelectorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->btnOld:Landroid/widget/Button;

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->btnOld:Landroid/widget/Button;

    new-instance v1, Lorg/telegram/ui/Components/ColorSelectorDialog$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ColorSelectorDialog$1;-><init>(Lorg/telegram/ui/Components/ColorSelectorDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f1000aa

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ColorSelectorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->btnNew:Landroid/widget/Button;

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->btnNew:Landroid/widget/Button;

    new-instance v1, Lorg/telegram/ui/Components/ColorSelectorDialog$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ColorSelectorDialog$2;-><init>(Lorg/telegram/ui/Components/ColorSelectorDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f1000a7

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ColorSelectorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/ColorSelectorView;

    iput-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->content:Lorg/telegram/ui/Components/ColorSelectorView;

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->content:Lorg/telegram/ui/Components/ColorSelectorView;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/ColorSelectorView;->setDialog(Landroid/app/Dialog;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->content:Lorg/telegram/ui/Components/ColorSelectorView;

    new-instance v1, Lorg/telegram/ui/Components/ColorSelectorDialog$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ColorSelectorDialog$3;-><init>(Lorg/telegram/ui/Components/ColorSelectorDialog;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ColorSelectorView;->setOnColorChangedListener(Lorg/telegram/ui/Components/ColorSelectorView$OnColorChangedListener;)V

    const v0, 0x7f1000a8

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ColorSelectorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/HistorySelectorView;

    iput-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->history:Lorg/telegram/ui/Components/HistorySelectorView;

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->history:Lorg/telegram/ui/Components/HistorySelectorView;

    new-instance v1, Lorg/telegram/ui/Components/ColorSelectorDialog$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ColorSelectorDialog$4;-><init>(Lorg/telegram/ui/Components/ColorSelectorDialog;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/HistorySelectorView;->setOnColorChangedListener(Lorg/telegram/ui/Components/HistorySelectorView$OnColorChangedListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->btnOld:Landroid/widget/Button;

    iget v1, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->initColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->btnOld:Landroid/widget/Button;

    iget v1, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->initColor:I

    xor-int/lit8 v1, v1, -0x1

    const/high16 v2, -0x1000000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->content:Lorg/telegram/ui/Components/ColorSelectorView;

    iget v1, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->initColor:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ColorSelectorView;->setColor(I)V

    return-void

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->side:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "TOuch outside the dialog ******************** "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ColorSelectorDialog;->dismiss()V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setColor(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->content:Lorg/telegram/ui/Components/ColorSelectorView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ColorSelectorView;->setColor(I)V

    return-void
.end method

.method public setOnColorChangedListener(Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ColorSelectorDialog;->listener:Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;

    return-void
.end method
