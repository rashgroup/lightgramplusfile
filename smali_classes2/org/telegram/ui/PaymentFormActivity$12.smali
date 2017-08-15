.class Lorg/telegram/ui/PaymentFormActivity$12;
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

.field private isYear:Z

.field final synthetic this$0:Lorg/telegram/ui/PaymentFormActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PaymentFormActivity;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$12;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/PaymentFormActivity$12;->characterAction:I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 13

    const/16 v12, 0x2f

    const/4 v11, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$12;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->ignoreOnCardChange:Z
    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$2700(Lorg/telegram/ui/PaymentFormActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$12;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;
    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$1200(Lorg/telegram/ui/PaymentFormActivity;)[Landroid/widget/EditText;

    move-result-object v0

    aget-object v6, v0, v5

    invoke-virtual {v6}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    const-string/jumbo v7, "0123456789"

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/PaymentFormActivity$12;->characterAction:I

    const/4 v8, 0x3

    if-ne v2, v8, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lorg/telegram/ui/PaymentFormActivity$12;->actionPosition:I

    invoke-virtual {v0, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v8, p0, Lorg/telegram/ui/PaymentFormActivity$12;->actionPosition:I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, -0x1

    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move v2, v3

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v2, v9, :cond_3

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v0, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$12;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # setter for: Lorg/telegram/ui/PaymentFormActivity;->ignoreOnCardChange:Z
    invoke-static {v0, v5}, Lorg/telegram/ui/PaymentFormActivity;->access$2702(Lorg/telegram/ui/PaymentFormActivity;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$12;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;
    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$1200(Lorg/telegram/ui/PaymentFormActivity;)[Landroid/widget/EditText;

    move-result-object v0

    aget-object v0, v0, v5

    const-string/jumbo v2, "windowBackgroundWhiteBlackText"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextColor(I)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-le v0, v11, :cond_4

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_4
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-ge v0, v4, :cond_5

    iput-boolean v3, p0, Lorg/telegram/ui/PaymentFormActivity$12;->isYear:Z

    :cond_5
    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity$12;->isYear:Z

    if-eqz v0, :cond_d

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-le v0, v4, :cond_a

    move v0, v4

    :goto_2
    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    array-length v2, v0

    if-ne v2, v4, :cond_6

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    :cond_6
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ne v2, v11, :cond_b

    array-length v2, v0

    if-ne v2, v4, :cond_b

    aget-object v2, v0, v3

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v0, v0, v5

    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit16 v0, v0, 0x7d0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v7, v4}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    if-lt v0, v9, :cond_7

    if-ne v0, v9, :cond_16

    if-ge v2, v7, :cond_16

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$12;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;
    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$1200(Lorg/telegram/ui/PaymentFormActivity;)[Landroid/widget/EditText;

    move-result-object v0

    aget-object v0, v0, v5

    const-string/jumbo v2, "windowBackgroundWhiteRedText4"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextColor(I)V

    :goto_3
    if-nez v5, :cond_8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-ne v0, v11, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$12;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;
    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$1200(Lorg/telegram/ui/PaymentFormActivity;)[Landroid/widget/EditText;

    move-result-object v2

    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$12;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->need_card_name:Z
    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$2800(Lorg/telegram/ui/PaymentFormActivity;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v4

    :goto_4
    aget-object v0, v2, v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_8
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-ne v0, v4, :cond_12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    :goto_5
    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-ltz v0, :cond_9

    invoke-virtual {v6}, Landroid/widget/EditText;->length()I

    move-result v1

    if-gt v0, v1, :cond_13

    :goto_6
    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$12;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # setter for: Lorg/telegram/ui/PaymentFormActivity;->ignoreOnCardChange:Z
    invoke-static {v0, v3}, Lorg/telegram/ui/PaymentFormActivity;->access$2702(Lorg/telegram/ui/PaymentFormActivity;Z)Z

    goto/16 :goto_0

    :cond_a
    move v0, v5

    goto/16 :goto_2

    :cond_b
    aget-object v0, v0, v3

    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0xc

    if-gt v0, v2, :cond_c

    if-nez v0, :cond_16

    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$12;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;
    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$1200(Lorg/telegram/ui/PaymentFormActivity;)[Landroid/widget/EditText;

    move-result-object v0

    aget-object v0, v0, v5

    const-string/jumbo v2, "windowBackgroundWhiteRedText4"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_3

    :cond_d
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-ne v0, v5, :cond_f

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v5, :cond_e

    if-eqz v0, :cond_e

    const-string/jumbo v0, "0"

    invoke-virtual {v8, v3, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    :cond_e
    move v5, v3

    goto/16 :goto_3

    :cond_f
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-ne v0, v4, :cond_16

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0xc

    if-gt v0, v2, :cond_10

    if-nez v0, :cond_15

    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$12;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;
    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$1200(Lorg/telegram/ui/PaymentFormActivity;)[Landroid/widget/EditText;

    move-result-object v0

    aget-object v0, v0, v5

    const-string/jumbo v2, "windowBackgroundWhiteRedText4"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextColor(I)V

    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :cond_11
    const/4 v0, 0x3

    goto/16 :goto_4

    :cond_12
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-le v0, v4, :cond_14

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    if-eq v0, v12, :cond_14

    invoke-virtual {v8, v4, v12}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    goto/16 :goto_5

    :cond_13
    invoke-virtual {v6}, Landroid/widget/EditText;->length()I

    move-result v0

    goto/16 :goto_6

    :cond_14
    move v0, v1

    goto/16 :goto_5

    :cond_15
    move v5, v3

    goto :goto_7

    :cond_16
    move v5, v3

    goto/16 :goto_3
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5

    const/16 v4, 0x2f

    const/4 v0, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x1

    if-nez p3, :cond_1

    if-ne p4, v1, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity$12;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;
    invoke-static {v2}, Lorg/telegram/ui/PaymentFormActivity;->access$1200(Lorg/telegram/ui/PaymentFormActivity;)[Landroid/widget/EditText;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v2

    if-eq v2, v3, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity$12;->isYear:Z

    iput v1, p0, Lorg/telegram/ui/PaymentFormActivity$12;->characterAction:I

    :goto_0
    return-void

    :cond_1
    if-ne p3, v1, :cond_3

    if-nez p4, :cond_3

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_2

    if-lez p2, :cond_2

    iput-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity$12;->isYear:Z

    const/4 v0, 0x3

    iput v0, p0, Lorg/telegram/ui/PaymentFormActivity$12;->characterAction:I

    add-int/lit8 v0, p2, -0x1

    iput v0, p0, Lorg/telegram/ui/PaymentFormActivity$12;->actionPosition:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/ui/PaymentFormActivity$12;->characterAction:I

    goto :goto_0

    :cond_3
    iput v3, p0, Lorg/telegram/ui/PaymentFormActivity$12;->characterAction:I

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
