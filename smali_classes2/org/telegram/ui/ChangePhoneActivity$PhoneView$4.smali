.class Lorg/telegram/ui/ChangePhoneActivity$PhoneView$4;
.super Ljava/lang/Object;
.source "ChangePhoneActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangePhoneActivity$PhoneView;-><init>(Lorg/telegram/ui/ChangePhoneActivity;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private actionPosition:I

.field private characterAction:I

.field final synthetic this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

.field final synthetic val$this$0:Lorg/telegram/ui/ChangePhoneActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;Lorg/telegram/ui/ChangePhoneActivity;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$4;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    iput-object p2, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$4;->val$this$0:Lorg/telegram/ui/ChangePhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$4;->characterAction:I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 11

    const/4 v10, 0x2

    const/16 v9, 0x20

    const/4 v8, 0x3

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$4;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->ignoreOnPhoneChange:Z
    invoke-static {v0}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$1100(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$4;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;
    invoke-static {v0}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$200(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/HintEditText;->getSelectionStart()I

    move-result v1

    const-string/jumbo v4, "0123456789"

    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$4;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;
    invoke-static {v0}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$200(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/HintEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$4;->characterAction:I

    if-ne v2, v8, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$4;->actionPosition:I

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$4;->actionPosition:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, -0x1

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move v2, v3

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_3

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$4;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    const/4 v2, 0x1

    # setter for: Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->ignoreOnPhoneChange:Z
    invoke-static {v0, v2}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$1102(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$4;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;
    invoke-static {v0}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$200(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/HintEditText;->getHintText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    move v0, v3

    :goto_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-ge v0, v4, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v9, :cond_4

    invoke-virtual {v5, v0, v9}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    if-ne v1, v0, :cond_4

    iget v4, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$4;->characterAction:I

    if-eq v4, v10, :cond_4

    iget v4, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$4;->characterAction:I

    if-eq v4, v8, :cond_4

    add-int/lit8 v1, v1, 0x1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v5, v0, v9}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    if-ne v1, v0, :cond_6

    iget v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$4;->characterAction:I

    if-eq v0, v10, :cond_6

    iget v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$4;->characterAction:I

    if-eq v0, v8, :cond_6

    add-int/lit8 v1, v1, 0x1

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$4;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;
    invoke-static {v0}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$200(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v0

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/HintEditText;->setText(Ljava/lang/CharSequence;)V

    if-ltz v1, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$4;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;
    invoke-static {v0}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$200(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$4;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;
    invoke-static {v2}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$200(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/HintEditText;->length()I

    move-result v2

    if-gt v1, v2, :cond_8

    :goto_3
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/HintEditText;->setSelection(I)V

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$4;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;
    invoke-static {v0}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$200(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/HintEditText;->onTextChange()V

    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$4;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    # setter for: Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->ignoreOnPhoneChange:Z
    invoke-static {v0, v3}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$1102(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;Z)Z

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$4;->this$1:Lorg/telegram/ui/ChangePhoneActivity$PhoneView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;
    invoke-static {v1}, Lorg/telegram/ui/ChangePhoneActivity$PhoneView;->access$200(Lorg/telegram/ui/ChangePhoneActivity$PhoneView;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/HintEditText;->length()I

    move-result v1

    goto :goto_3
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    const/4 v0, 0x1

    if-nez p3, :cond_0

    if-ne p4, v0, :cond_0

    iput v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$4;->characterAction:I

    :goto_0
    return-void

    :cond_0
    if-ne p3, v0, :cond_2

    if-nez p4, :cond_2

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    if-lez p2, :cond_1

    const/4 v0, 0x3

    iput v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$4;->characterAction:I

    add-int/lit8 v0, p2, -0x1

    iput v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$4;->actionPosition:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$4;->characterAction:I

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/ChangePhoneActivity$PhoneView$4;->characterAction:I

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
