.class public Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView;
.super Lorg/telegram/ui/Components/SlideView;
.source "CancelAccountDeletionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/CancelAccountDeletionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PhoneView"
.end annotation


# instance fields
.field private nextPressed:Z

.field private progressBar:Lorg/telegram/ui/Components/RadialProgressView;

.field final synthetic this$0:Lorg/telegram/ui/CancelAccountDeletionActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/CancelAccountDeletionActivity;Landroid/content/Context;)V
    .locals 4

    const/4 v3, -0x2

    iput-object p1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView;->this$0:Lorg/telegram/ui/CancelAccountDeletionActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SlideView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView;->nextPressed:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView;->setOrientation(I)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x1

    const/16 v2, 0xc8

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-direct {v1, p2}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    iget-object v1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v2, 0x11

    invoke-static {v3, v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$3100(Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView;)Lorg/telegram/ui/Components/RadialProgressView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    return-object v0
.end method

.method static synthetic access$402(Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView;->nextPressed:Z

    return p1
.end method


# virtual methods
.method public getHeaderName()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "CancelAccountReset"

    const v1, 0x7f0800f3

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onNextPressed()V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView;->this$0:Lorg/telegram/ui/CancelAccountDeletionActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/CancelAccountDeletionActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView;->nextPressed:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-eq v1, v2, :cond_5

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    :goto_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_2

    if-eqz v1, :cond_2

    :cond_2
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_account_sendConfirmPhoneCode;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_account_sendConfirmPhoneCode;-><init>()V

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_sendConfirmPhoneCode;->allow_flashcall:Z

    iget-object v4, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView;->this$0:Lorg/telegram/ui/CancelAccountDeletionActivity;

    # getter for: Lorg/telegram/ui/CancelAccountDeletionActivity;->hash:Ljava/lang/String;
    invoke-static {v4}, Lorg/telegram/ui/CancelAccountDeletionActivity;->access$200(Lorg/telegram/ui/CancelAccountDeletionActivity;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_account_sendConfirmPhoneCode;->hash:Ljava/lang/String;

    iget-boolean v4, v1, Lorg/telegram/tgnet/TLRPC$TL_account_sendConfirmPhoneCode;->allow_flashcall:Z

    if-eqz v4, :cond_4

    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView;->this$0:Lorg/telegram/ui/CancelAccountDeletionActivity;

    # getter for: Lorg/telegram/ui/CancelAccountDeletionActivity;->phone:Ljava/lang/String;
    invoke-static {v4}, Lorg/telegram/ui/CancelAccountDeletionActivity;->access$300(Lorg/telegram/ui/CancelAccountDeletionActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView;->this$0:Lorg/telegram/ui/CancelAccountDeletionActivity;

    # getter for: Lorg/telegram/ui/CancelAccountDeletionActivity;->phone:Ljava/lang/String;
    invoke-static {v4}, Lorg/telegram/ui/CancelAccountDeletionActivity;->access$300(Lorg/telegram/ui/CancelAccountDeletionActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    move v0, v2

    :goto_2
    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_account_sendConfirmPhoneCode;->current_number:Z

    iget-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_account_sendConfirmPhoneCode;->current_number:Z

    if-nez v0, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_account_sendConfirmPhoneCode;->allow_flashcall:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "phone"

    iget-object v4, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView;->this$0:Lorg/telegram/ui/CancelAccountDeletionActivity;

    # getter for: Lorg/telegram/ui/CancelAccountDeletionActivity;->phone:Ljava/lang/String;
    invoke-static {v4}, Lorg/telegram/ui/CancelAccountDeletionActivity;->access$300(Lorg/telegram/ui/CancelAccountDeletionActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView;->nextPressed:Z

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView$1;

    invoke-direct {v3, p0, v0, v1}, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView$1;-><init>(Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_account_sendConfirmPhoneCode;)V

    const/4 v0, 0x2

    invoke-virtual {v2, v1, v3, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_0

    :cond_5
    move v1, v3

    goto :goto_1

    :cond_6
    move v0, v3

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_account_sendConfirmPhoneCode;->current_number:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_sendConfirmPhoneCode;->allow_flashcall:Z

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public onShow()V
    .locals 0

    invoke-super {p0}, Lorg/telegram/ui/Components/SlideView;->onShow()V

    invoke-virtual {p0}, Lorg/telegram/ui/CancelAccountDeletionActivity$PhoneView;->onNextPressed()V

    return-void
.end method
