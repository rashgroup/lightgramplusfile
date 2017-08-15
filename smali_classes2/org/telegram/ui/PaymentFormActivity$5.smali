.class Lorg/telegram/ui/PaymentFormActivity$5;
.super Ljava/lang/Object;
.source "PaymentFormActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PaymentFormActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private actionPosition:I

.field private characterAction:I

.field final synthetic this$0:Lorg/telegram/ui/PaymentFormActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PaymentFormActivity;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$5;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/PaymentFormActivity$5;->characterAction:I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 12

    const/4 v11, 0x2

    const/16 v10, 0x20

    const/4 v9, 0x3

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$5;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->ignoreOnPhoneChange:Z
    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$1800(Lorg/telegram/ui/PaymentFormActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$5;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;
    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$1200(Lorg/telegram/ui/PaymentFormActivity;)[Landroid/widget/EditText;

    move-result-object v0

    const/16 v1, 0x9

    aget-object v0, v0, v1

    check-cast v0, Lorg/telegram/ui/Components/HintEditText;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/HintEditText;->getSelectionStart()I

    move-result v2

    const-string/jumbo v5, "0123456789"

    invoke-virtual {v0}, Lorg/telegram/ui/Components/HintEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lorg/telegram/ui/PaymentFormActivity$5;->characterAction:I

    if-ne v3, v9, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lorg/telegram/ui/PaymentFormActivity$5;->actionPosition:I

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, p0, Lorg/telegram/ui/PaymentFormActivity$5;->actionPosition:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, -0x1

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move v3, v4

    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_3

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v1, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$5;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    const/4 v3, 0x1

    # setter for: Lorg/telegram/ui/PaymentFormActivity;->ignoreOnPhoneChange:Z
    invoke-static {v1, v3}, Lorg/telegram/ui/PaymentFormActivity;->access$1802(Lorg/telegram/ui/PaymentFormActivity;Z)Z

    invoke-virtual {v0}, Lorg/telegram/ui/Components/HintEditText;->getHintText()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    move v1, v4

    :goto_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-ge v1, v5, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_5

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v10, :cond_4

    invoke-virtual {v6, v1, v10}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    if-ne v2, v1, :cond_4

    iget v5, p0, Lorg/telegram/ui/PaymentFormActivity$5;->characterAction:I

    if-eq v5, v11, :cond_4

    iget v5, p0, Lorg/telegram/ui/PaymentFormActivity$5;->characterAction:I

    if-eq v5, v9, :cond_4

    add-int/lit8 v2, v2, 0x1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v6, v1, v10}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    if-ne v2, v1, :cond_6

    iget v1, p0, Lorg/telegram/ui/PaymentFormActivity$5;->characterAction:I

    if-eq v1, v11, :cond_6

    iget v1, p0, Lorg/telegram/ui/PaymentFormActivity$5;->characterAction:I

    if-eq v1, v9, :cond_6

    add-int/lit8 v2, v2, 0x1

    :cond_6
    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/HintEditText;->setText(Ljava/lang/CharSequence;)V

    if-ltz v2, :cond_7

    invoke-virtual {v0}, Lorg/telegram/ui/Components/HintEditText;->length()I

    move-result v1

    if-gt v2, v1, :cond_8

    :goto_3
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/HintEditText;->setSelection(I)V

    :cond_7
    invoke-virtual {v0}, Lorg/telegram/ui/Components/HintEditText;->onTextChange()V

    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$5;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # setter for: Lorg/telegram/ui/PaymentFormActivity;->ignoreOnPhoneChange:Z
    invoke-static {v0, v4}, Lorg/telegram/ui/PaymentFormActivity;->access$1802(Lorg/telegram/ui/PaymentFormActivity;Z)Z

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v0}, Lorg/telegram/ui/Components/HintEditText;->length()I

    move-result v2

    goto :goto_3
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    const/4 v0, 0x1

    if-nez p3, :cond_0

    if-ne p4, v0, :cond_0

    iput v0, p0, Lorg/telegram/ui/PaymentFormActivity$5;->characterAction:I

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

    iput v0, p0, Lorg/telegram/ui/PaymentFormActivity$5;->characterAction:I

    add-int/lit8 v0, p2, -0x1

    iput v0, p0, Lorg/telegram/ui/PaymentFormActivity$5;->actionPosition:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/ui/PaymentFormActivity$5;->characterAction:I

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/PaymentFormActivity$5;->characterAction:I

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
