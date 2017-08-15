.class public Lorg/telegram/ui/Components/HexSelectorView;
.super Landroid/widget/LinearLayout;
.source "HexSelectorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/HexSelectorView$OnColorChangedListener;
    }
.end annotation


# instance fields
.field private btnSave:Landroid/widget/Button;

.field private color:I

.field private dialog:Landroid/app/Dialog;

.field private edit:Landroid/widget/EditText;

.field private listener:Lorg/telegram/ui/Components/HexSelectorView$OnColorChangedListener;

.field private txtError:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/HexSelectorView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/HexSelectorView;->init()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/HexSelectorView;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/HexSelectorView;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/HexSelectorView;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/HexSelectorView;->edit:Landroid/widget/EditText;

    return-object v0
.end method

.method private init()V
    .locals 4

    const/4 v3, -0x1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/HexSelectorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f04001c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Components/HexSelectorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f100095

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/telegram/ui/Components/HexSelectorView;->txtError:Landroid/widget/TextView;

    const v0, 0x7f100093

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lorg/telegram/ui/Components/HexSelectorView;->edit:Landroid/widget/EditText;

    iget-object v0, p0, Lorg/telegram/ui/Components/HexSelectorView;->edit:Landroid/widget/EditText;

    new-instance v2, Lorg/telegram/ui/Components/HexSelectorView$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/HexSelectorView$1;-><init>(Lorg/telegram/ui/Components/HexSelectorView;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/HexSelectorView;->edit:Landroid/widget/EditText;

    new-instance v2, Lorg/telegram/ui/Components/HexSelectorView$2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/HexSelectorView$2;-><init>(Lorg/telegram/ui/Components/HexSelectorView;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/HexSelectorView;->edit:Landroid/widget/EditText;

    new-instance v2, Lorg/telegram/ui/Components/HexSelectorView$3;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/HexSelectorView$3;-><init>(Lorg/telegram/ui/Components/HexSelectorView;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/HexSelectorView;->edit:Landroid/widget/EditText;

    new-instance v2, Lorg/telegram/ui/Components/HexSelectorView$4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/HexSelectorView$4;-><init>(Lorg/telegram/ui/Components/HexSelectorView;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const v0, 0x7f100094

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/telegram/ui/Components/HexSelectorView;->btnSave:Landroid/widget/Button;

    iget-object v0, p0, Lorg/telegram/ui/Components/HexSelectorView;->btnSave:Landroid/widget/Button;

    new-instance v1, Lorg/telegram/ui/Components/HexSelectorView$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/HexSelectorView$5;-><init>(Lorg/telegram/ui/Components/HexSelectorView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private onColorChanged()V
    .locals 3

    const-string/jumbo v0, "HexSelector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "String parsing succeeded. changing to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/Components/HexSelectorView;->color:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/telegram/ui/Components/HexSelectorView;->listener:Lorg/telegram/ui/Components/HexSelectorView$OnColorChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/HexSelectorView;->listener:Lorg/telegram/ui/Components/HexSelectorView$OnColorChangedListener;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/HexSelectorView;->getColor()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/HexSelectorView$OnColorChangedListener;->colorChanged(I)V

    :cond_0
    return-void
.end method

.method private padLeft(Ljava/lang/String;CI)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, p3, :cond_0

    :goto_0
    return-object p1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :goto_1
    if-ge v0, p3, :cond_1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public getColor()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/HexSelectorView;->color:I

    return v0
.end method

.method public setColor(I)V
    .locals 4

    const/16 v3, 0x8

    iget v0, p0, Lorg/telegram/ui/Components/HexSelectorView;->color:I

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/HexSelectorView;->color:I

    iget-object v0, p0, Lorg/telegram/ui/Components/HexSelectorView;->edit:Landroid/widget/EditText;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x30

    invoke-direct {p0, v1, v2, v3}, Lorg/telegram/ui/Components/HexSelectorView;->padLeft(Ljava/lang/String;CI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/HexSelectorView;->txtError:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setDialog(Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/HexSelectorView;->dialog:Landroid/app/Dialog;

    return-void
.end method

.method public setOnColorChangedListener(Lorg/telegram/ui/Components/HexSelectorView$OnColorChangedListener;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/HexSelectorView;->listener:Lorg/telegram/ui/Components/HexSelectorView$OnColorChangedListener;

    return-void
.end method

.method public validateColorInTextView()V
    .locals 5

    const/16 v4, 0x8

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/HexSelectorView;->edit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "HexSelector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "String parsing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v4, :cond_2

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "HexSelector"

    const-string/jumbo v2, "String parsing died"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lorg/telegram/ui/Components/HexSelectorView;->txtError:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_2
    const/16 v1, 0x10

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/HexSelectorView;->color:I

    iget-object v0, p0, Lorg/telegram/ui/Components/HexSelectorView;->txtError:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/HexSelectorView;->onColorChanged()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
