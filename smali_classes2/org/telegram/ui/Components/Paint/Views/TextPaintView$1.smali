.class Lorg/telegram/ui/Components/Paint/Views/TextPaintView$1;
.super Ljava/lang/Object;
.source "TextPaintView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Paint/Views/TextPaintView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;ILjava/lang/String;Lorg/telegram/ui/Components/Paint/Swatch;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private beforeCursorPosition:I

.field private text:Ljava/lang/String;

.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/Views/TextPaintView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Paint/Views/TextPaintView;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$1;->this$0:Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$1;->beforeCursorPosition:I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$1;->this$0:Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    # getter for: Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;
    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->access$000(Lorg/telegram/ui/Components/Paint/Views/TextPaintView;)Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$1;->this$0:Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    # getter for: Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;
    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->access$000(Lorg/telegram/ui/Components/Paint/Views/TextPaintView;)Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->getLineCount()I

    move-result v0

    const/16 v1, 0x9

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$1;->this$0:Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    # getter for: Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;
    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->access$000(Lorg/telegram/ui/Components/Paint/Views/TextPaintView;)Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$1;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$1;->this$0:Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    # getter for: Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;
    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->access$000(Lorg/telegram/ui/Components/Paint/Views/TextPaintView;)Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$1;->beforeCursorPosition:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setSelection(I)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$1;->this$0:Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    # getter for: Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;
    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->access$000(Lorg/telegram/ui/Components/Paint/Views/TextPaintView;)Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$1;->text:Ljava/lang/String;

    iput p2, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$1;->beforeCursorPosition:I

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
