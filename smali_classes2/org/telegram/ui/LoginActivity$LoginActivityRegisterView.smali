.class public Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;
.super Lorg/telegram/ui/Components/SlideView;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoginActivityRegisterView"
.end annotation


# instance fields
.field private currentParams:Landroid/os/Bundle;

.field private firstNameField:Landroid/widget/EditText;

.field private lastNameField:Landroid/widget/EditText;

.field private nextPressed:Z

.field private phoneCode:Ljava/lang/String;

.field private phoneHash:Ljava/lang/String;

.field private requestPhone:Ljava/lang/String;

.field private textView:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/telegram/ui/LoginActivity;

.field private wrongNumber:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V
    .locals 13

    const/4 v12, -0x1

    const/4 v0, -0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v3, 0x0

    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SlideView;-><init>(Landroid/content/Context;)V

    iput-boolean v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->nextPressed:Z

    invoke-virtual {p0, v10}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->setOrientation(I)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->textView:Landroid/widget/TextView;

    const-string/jumbo v2, "RegisterText"

    const v4, 0x7f08046d

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->textView:Landroid/widget/TextView;

    const-string/jumbo v2, "windowBackgroundWhiteGrayText6"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->textView:Landroid/widget/TextView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->textView:Landroid/widget/TextView;

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v1, v10, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v7, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->textView:Landroid/widget/TextView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_1

    const/4 v2, 0x5

    :goto_1
    const/16 v4, 0x8

    move v1, v0

    move v5, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v7, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Landroid/widget/EditText;

    const-string/jumbo v2, "windowBackgroundWhiteHintText"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHintTextColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Landroid/widget/EditText;

    const-string/jumbo v2, "windowBackgroundWhiteBlackText"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Landroid/widget/EditText;

    invoke-static {p2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createEditTextDrawable(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Landroid/widget/EditText;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Landroid/widget/EditText;

    const-string/jumbo v2, "FirstName"

    const v4, 0x7f080211

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Landroid/widget/EditText;

    const v2, 0x10000005

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Landroid/widget/EditText;

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v1, v10, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Landroid/widget/EditText;

    invoke-virtual {v1, v10}, Landroid/widget/EditText;->setMaxLines(I)V

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Landroid/widget/EditText;

    const/16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Landroid/widget/EditText;

    const/16 v5, 0x24

    const/high16 v7, 0x41d00000    # 26.0f

    move v4, v12

    move v6, v11

    move v8, v11

    move v9, v11

    invoke-static/range {v4 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Landroid/widget/EditText;

    new-instance v2, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$1;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$1;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameField:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameField:Landroid/widget/EditText;

    const-string/jumbo v2, "LastName"

    const v4, 0x7f0802b1

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameField:Landroid/widget/EditText;

    const-string/jumbo v2, "windowBackgroundWhiteHintText"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHintTextColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameField:Landroid/widget/EditText;

    const-string/jumbo v2, "windowBackgroundWhiteBlackText"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameField:Landroid/widget/EditText;

    invoke-static {p2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createEditTextDrawable(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameField:Landroid/widget/EditText;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameField:Landroid/widget/EditText;

    const v2, 0x10000005

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameField:Landroid/widget/EditText;

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v1, v10, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameField:Landroid/widget/EditText;

    invoke-virtual {v1, v10}, Landroid/widget/EditText;->setMaxLines(I)V

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameField:Landroid/widget/EditText;

    const/16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameField:Landroid/widget/EditText;

    const/16 v5, 0x24

    const/high16 v7, 0x41200000    # 10.0f

    move v4, v12

    move v6, v11

    move v8, v11

    move v9, v11

    invoke-static/range {v4 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x50

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-static {v12, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v7, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->wrongNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->wrongNumber:Landroid/widget/TextView;

    const-string/jumbo v2, "CancelRegistration"

    const v4, 0x7f0800f7

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->wrongNumber:Landroid/widget/TextView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x5

    :goto_2
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->wrongNumber:Landroid/widget/TextView;

    const-string/jumbo v2, "windowBackgroundWhiteBlueText4"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->wrongNumber:Landroid/widget/TextView;

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v1, v10, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->wrongNumber:Landroid/widget/TextView;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->wrongNumber:Landroid/widget/TextView;

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v8, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->wrongNumber:Landroid/widget/TextView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x5

    :goto_3
    or-int/lit8 v2, v1, 0x50

    const/16 v6, 0xa

    move v1, v0

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->wrongNumber:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$2;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const/4 v1, 0x3

    goto/16 :goto_0

    :cond_1
    const/4 v2, 0x3

    goto/16 :goto_1

    :cond_2
    const/4 v1, 0x3

    goto :goto_2

    :cond_3
    const/4 v1, 0x3

    goto :goto_3
.end method

.method static synthetic access$6800(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$6902(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->nextPressed:Z

    return p1
.end method

.method static synthetic access$7500(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7600(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$7700(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->wrongNumber:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public getHeaderName()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "YourName"

    const v1, 0x7f0805be

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->currentParams:Landroid/os/Bundle;

    return-void
.end method

.method public onNextPressed()V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->nextPressed:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->nextPressed:Z

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_auth_signUp;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_auth_signUp;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->phoneCode:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_signUp;->phone_code:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->phoneHash:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_signUp;->phone_code_hash:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->requestPhone:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_signUp;->phone_number:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_signUp;->first_name:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_signUp;->last_name:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->this$0:Lorg/telegram/ui/LoginActivity;

    # invokes: Lorg/telegram/ui/LoginActivity;->needShowProgress()V
    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$1700(Lorg/telegram/ui/LoginActivity;)V

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3;

    invoke-direct {v2, p0}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$3;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)V

    const/16 v3, 0xa

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_0
.end method

.method public onShow()V
    .locals 2

    invoke-super {p0}, Lorg/telegram/ui/Components/SlideView;->onShow()V

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void
.end method

.method public restoreStateParams(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "registerview_params"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->currentParams:Landroid/os/Bundle;

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->currentParams:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->currentParams:Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->setParams(Landroid/os/Bundle;Z)V

    :cond_0
    const-string/jumbo v0, "registerview_first"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const-string/jumbo v0, "registerview_last"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameField:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public saveStateParams(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "registerview_first"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "registerview_last"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->currentParams:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "registerview_params"

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->currentParams:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public setParams(Landroid/os/Bundle;Z)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameField:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v0, "phoneFormated"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->requestPhone:Ljava/lang/String;

    const-string/jumbo v0, "phoneHash"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->phoneHash:Ljava/lang/String;

    const-string/jumbo v0, "code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->phoneCode:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->currentParams:Landroid/os/Bundle;

    goto :goto_0
.end method
