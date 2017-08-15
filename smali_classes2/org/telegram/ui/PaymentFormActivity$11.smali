.class Lorg/telegram/ui/PaymentFormActivity$11;
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


# static fields
.field public static final MAX_LENGTH_AMERICAN_EXPRESS:I = 0xf

.field public static final MAX_LENGTH_DINERS_CLUB:I = 0xe

.field public static final MAX_LENGTH_STANDARD:I = 0x10


# instance fields
.field public final PREFIXES_14:[Ljava/lang/String;

.field public final PREFIXES_15:[Ljava/lang/String;

.field public final PREFIXES_16:[Ljava/lang/String;

.field private actionPosition:I

.field private characterAction:I

.field final synthetic this$0:Lorg/telegram/ui/PaymentFormActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PaymentFormActivity;)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$11;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "34"

    aput-object v1, v0, v3

    const-string/jumbo v1, "37"

    aput-object v1, v0, v4

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$11;->PREFIXES_15:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "300"

    aput-object v1, v0, v3

    const-string/jumbo v1, "301"

    aput-object v1, v0, v4

    const-string/jumbo v1, "302"

    aput-object v1, v0, v5

    const-string/jumbo v1, "303"

    aput-object v1, v0, v6

    const-string/jumbo v1, "304"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "305"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "309"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "36"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "38"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "39"

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$11;->PREFIXES_14:[Ljava/lang/String;

    const/16 v0, 0x23

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "2221"

    aput-object v1, v0, v3

    const-string/jumbo v1, "2222"

    aput-object v1, v0, v4

    const-string/jumbo v1, "2223"

    aput-object v1, v0, v5

    const-string/jumbo v1, "2224"

    aput-object v1, v0, v6

    const-string/jumbo v1, "2225"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "2226"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "2227"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "2228"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "2229"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "223"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "224"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "225"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "226"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "227"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "228"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "229"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "23"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "24"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "25"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "26"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "270"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "271"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "2720"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "50"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "51"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "52"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "53"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "54"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "55"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "4"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "60"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "62"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "64"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v2, "65"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "35"

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$11;->PREFIXES_16:[Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/PaymentFormActivity$11;->characterAction:I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 14

    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$11;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->ignoreOnCardChange:Z
    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$2700(Lorg/telegram/ui/PaymentFormActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$11;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;
    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$1200(Lorg/telegram/ui/PaymentFormActivity;)[Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v8, v0, v1

    invoke-virtual {v8}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    const-string/jumbo v3, "0123456789"

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/PaymentFormActivity$11;->characterAction:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    iget v5, p0, Lorg/telegram/ui/PaymentFormActivity$11;->actionPosition:I

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lorg/telegram/ui/PaymentFormActivity$11;->actionPosition:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, -0x1

    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_3

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$11;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    const/4 v2, 0x1

    # setter for: Lorg/telegram/ui/PaymentFormActivity;->ignoreOnCardChange:Z
    invoke-static {v0, v2}, Lorg/telegram/ui/PaymentFormActivity;->access$2702(Lorg/telegram/ui/PaymentFormActivity;Z)Z

    const/4 v2, 0x0

    const/16 v0, 0x64

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_5

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v3, 0x0

    move v7, v3

    move v5, v0

    move-object v6, v2

    :goto_2
    const/4 v0, 0x3

    if-ge v7, v0, :cond_12

    packed-switch v7, :pswitch_data_0

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity$11;->PREFIXES_14:[Ljava/lang/String;

    const/16 v0, 0xe

    const-string/jumbo v2, "xxxx xxxx xxxx xx"

    :goto_3
    const/4 v4, 0x0

    :goto_4
    array-length v11, v3

    if-ge v4, v11, :cond_11

    aget-object v11, v3, v4

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-gt v12, v13, :cond_8

    invoke-virtual {v11, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    :cond_4
    :goto_5
    if-eqz v2, :cond_a

    :goto_6
    if-eqz v0, :cond_5

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-le v3, v0, :cond_5

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_5
    if-eqz v2, :cond_e

    if-eqz v0, :cond_6

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ne v3, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$11;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;
    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$1200(Lorg/telegram/ui/PaymentFormActivity;)[Landroid/widget/EditText;

    move-result-object v0

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_6
    const-string/jumbo v0, "windowBackgroundWhiteBlackText"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setTextColor(I)V

    const/4 v0, 0x0

    :goto_7
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v0, v3, :cond_c

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_b

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_7

    const/16 v3, 0x20

    invoke-virtual {v9, v0, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    if-ne v1, v0, :cond_7

    iget v3, p0, Lorg/telegram/ui/PaymentFormActivity$11;->characterAction:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_7

    iget v3, p0, Lorg/telegram/ui/PaymentFormActivity$11;->characterAction:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_7

    add-int/lit8 v1, v1, 0x1

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :pswitch_0
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity$11;->PREFIXES_16:[Ljava/lang/String;

    const/16 v0, 0x10

    const-string/jumbo v2, "xxxx xxxx xxxx xxxx"

    goto :goto_3

    :pswitch_1
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity$11;->PREFIXES_15:[Ljava/lang/String;

    const/16 v0, 0xf

    const-string/jumbo v2, "xxxx xxxx xxxx xxx"

    goto :goto_3

    :cond_8
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    :cond_a
    add-int/lit8 v3, v7, 0x1

    move v7, v3

    move v5, v0

    move-object v6, v2

    goto/16 :goto_2

    :cond_b
    const/16 v2, 0x20

    invoke-virtual {v9, v0, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    if-ne v1, v0, :cond_c

    iget v0, p0, Lorg/telegram/ui/PaymentFormActivity$11;->characterAction:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_c

    iget v0, p0, Lorg/telegram/ui/PaymentFormActivity$11;->characterAction:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_c

    add-int/lit8 v1, v1, 0x1

    :cond_c
    :goto_8
    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-ltz v1, :cond_d

    invoke-virtual {v8}, Landroid/widget/EditText;->length()I

    move-result v0

    if-gt v1, v0, :cond_10

    :goto_9
    invoke-virtual {v8, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$11;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/PaymentFormActivity;->ignoreOnCardChange:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->access$2702(Lorg/telegram/ui/PaymentFormActivity;Z)Z

    goto/16 :goto_0

    :cond_e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_f

    const-string/jumbo v0, "windowBackgroundWhiteRedText4"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    :goto_a
    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_8

    :cond_f
    const-string/jumbo v0, "windowBackgroundWhiteBlackText"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_a

    :cond_10
    invoke-virtual {v8}, Landroid/widget/EditText;->length()I

    move-result v1

    goto :goto_9

    :cond_11
    move v0, v5

    move-object v2, v6

    goto/16 :goto_5

    :cond_12
    move v0, v5

    move-object v2, v6

    goto/16 :goto_6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    const/4 v0, 0x1

    if-nez p3, :cond_0

    if-ne p4, v0, :cond_0

    iput v0, p0, Lorg/telegram/ui/PaymentFormActivity$11;->characterAction:I

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

    iput v0, p0, Lorg/telegram/ui/PaymentFormActivity$11;->characterAction:I

    add-int/lit8 v0, p2, -0x1

    iput v0, p0, Lorg/telegram/ui/PaymentFormActivity$11;->actionPosition:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/ui/PaymentFormActivity$11;->characterAction:I

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/PaymentFormActivity$11;->characterAction:I

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
