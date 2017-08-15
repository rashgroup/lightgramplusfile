.class public Lorg/telegram/ui/ContactOnline;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ContactOnline.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ContactOnline$ContactOnlineDelegate;
    }
.end annotation


# static fields
.field private static final add_button:I = 0x1

.field private static final search_button:I


# instance fields
.field private allowBots:Z

.field private allowUsernameSearch:Z

.field private chat_id:I

.field private createSecretChat:Z

.field private creatingChat:Z

.field private delegate:Lorg/telegram/ui/ContactOnline$ContactOnlineDelegate;

.field private destroyAfterSelect:Z

.field private emptyTextView:Landroid/widget/TextView;

.field private ignoreUsers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation
.end field

.field private listView:Lorg/telegram/ui/Components/LetterSectionsListView;

.field private listViewAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

.field private needForwardCount:Z

.field private needPhonebook:Z

.field private onlyUsers:Z

.field private returnAsResult:Z

.field private searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter;

.field private searchWas:Z

.field private searching:Z

.field private selectAlertString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactOnline;->creatingChat:Z

    iput-boolean v1, p0, Lorg/telegram/ui/ContactOnline;->allowBots:Z

    iput-boolean v1, p0, Lorg/telegram/ui/ContactOnline;->needForwardCount:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ContactOnline;->selectAlertString:Ljava/lang/String;

    iput-boolean v1, p0, Lorg/telegram/ui/ContactOnline;->allowUsernameSearch:Z

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ContactOnline;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/ContactOnline;->searching:Z

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ContactOnline;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/ContactOnline;->searchWas:Z

    return v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ContactOnline;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/ContactOnline;->chat_id:I

    return v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ContactOnline;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/ContactOnline;->needPhonebook:Z

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ContactOnline;)Lorg/telegram/ui/Adapters/SearchAdapter;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline;->searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ContactOnline;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/ContactOnline;->returnAsResult:Z

    return v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ContactOnline;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline;->ignoreUsers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ContactOnline;Lorg/telegram/tgnet/TLRPC$User;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ContactOnline;->didSelectResult(Lorg/telegram/tgnet/TLRPC$User;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/ContactOnline;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/ContactOnline;->createSecretChat:Z

    return v0
.end method

.method static synthetic access$702(Lorg/telegram/ui/ContactOnline;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/ContactOnline;->creatingChat:Z

    return p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/ContactOnline;)Lorg/telegram/ui/Adapters/BaseSectionsAdapter;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline;->listViewAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/ContactOnline;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/ContactOnline;->onlyUsers:Z

    return v0
.end method

.method private didSelectResult(Lorg/telegram/tgnet/TLRPC$User;ZLjava/lang/String;)V
    .locals 9

    const/4 v7, 0x2

    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-eqz p2, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline;->selectAlertString:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lorg/telegram/ui/ContactOnline;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$User;->bot_nochats:Z

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/ui/ContactOnline;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "BotCantJoinGroups"

    const v2, 0x7f0800ce

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ContactOnline;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "AppName"

    const v2, 0x7f080086

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline;->selectAlertString:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->formatStringSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lorg/telegram/ui/ContactOnline;->needForwardCount:Z

    if-eqz v2, :cond_7

    const-string/jumbo v2, "%s\n\n%s"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v5

    const-string/jumbo v0, "AddToTheGroupForwardCount"

    const v5, 0x7f08006b

    invoke-static {v0, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lorg/telegram/ui/ContactOnline;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setTextSize(F)V

    const-string/jumbo v4, "50"

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0x11

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setGravity(I)V

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setInputType(I)V

    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    new-instance v4, Lorg/telegram/ui/ContactOnline$5;

    invoke-direct {v4, p0, v0}, Lorg/telegram/ui/ContactOnline$5;-><init>(Lorg/telegram/ui/ContactOnline;Landroid/widget/EditText;)V

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-object v8, v0

    move-object v0, v2

    move-object v2, v8

    :goto_1
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string/jumbo v0, "OK"

    const v4, 0x7f0803c8

    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lorg/telegram/ui/ContactOnline$6;

    invoke-direct {v4, p0, p1, v2}, Lorg/telegram/ui/ContactOnline$6;-><init>(Lorg/telegram/ui/ContactOnline;Lorg/telegram/tgnet/TLRPC$User;Landroid/widget/EditText;)V

    invoke-virtual {v3, v0, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string/jumbo v0, "Cancel"

    const v4, 0x7f0800f2

    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ContactOnline;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_4

    instance-of v1, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_3
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ContactOnline;->delegate:Lorg/telegram/ui/ContactOnline$ContactOnlineDelegate;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline;->delegate:Lorg/telegram/ui/ContactOnline$ContactOnlineDelegate;

    invoke-interface {v0, p1, p3}, Lorg/telegram/ui/ContactOnline$ContactOnlineDelegate;->didSelectContact(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/telegram/ui/ContactOnline;->delegate:Lorg/telegram/ui/ContactOnline$ContactOnlineDelegate;

    :cond_6
    invoke-virtual {p0}, Lorg/telegram/ui/ContactOnline;->finishFragment()V

    goto/16 :goto_0

    :cond_7
    move-object v2, v1

    goto :goto_1
.end method

.method private updateVisibleRows(I)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LetterSectionsListView;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LetterSectionsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Lorg/telegram/ui/Cells/UserCell;

    if-eqz v3, :cond_0

    check-cast v0, Lorg/telegram/ui/Cells/UserCell;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/UserCell;->update(I)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 11

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    const/4 v9, -0x1

    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/telegram/ui/ContactOnline;->searching:Z

    iput-boolean v4, p0, Lorg/telegram/ui/ContactOnline;->searchWas:Z

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v1, 0x7f0200e8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    iget-boolean v0, p0, Lorg/telegram/ui/ContactOnline;->destroyAfterSelect:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/ContactOnline;->returnAsResult:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "SelectContact"

    const v2, 0x7f0804c6

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ContactOnline;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/ContactOnline$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ContactOnline$1;-><init>(Lorg/telegram/ui/ContactOnline;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    const v1, 0x7f0200fc

    invoke-virtual {v0, v8, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v0, Lorg/telegram/ui/Adapters/SearchAdapter;

    iget-object v2, p0, Lorg/telegram/ui/ContactOnline;->ignoreUsers:Ljava/util/HashMap;

    iget-boolean v3, p0, Lorg/telegram/ui/ContactOnline;->allowUsernameSearch:Z

    iget-boolean v6, p0, Lorg/telegram/ui/ContactOnline;->allowBots:Z

    move-object v1, p1

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Adapters/SearchAdapter;-><init>(Landroid/content/Context;Ljava/util/HashMap;ZZZZ)V

    iput-object v0, p0, Lorg/telegram/ui/ContactOnline;->searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter;

    new-instance v2, Lorg/telegram/ui/Adapters/CAdapter;

    iget-boolean v0, p0, Lorg/telegram/ui/ContactOnline;->onlyUsers:Z

    if-eqz v0, :cond_0

    :cond_0
    iget-boolean v5, p0, Lorg/telegram/ui/ContactOnline;->needPhonebook:Z

    iget-object v6, p0, Lorg/telegram/ui/ContactOnline;->ignoreUsers:Ljava/util/HashMap;

    iget v0, p0, Lorg/telegram/ui/ContactOnline;->chat_id:I

    if-eqz v0, :cond_4

    move v7, v8

    :goto_1
    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Adapters/CAdapter;-><init>(Landroid/content/Context;IZLjava/util/HashMap;Z)V

    iput-object v2, p0, Lorg/telegram/ui/ContactOnline;->listViewAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ContactOnline;->fragmentView:Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v9, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v9, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v2, 0x30

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/ContactOnline$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ContactOnline$2;-><init>(Lorg/telegram/ui/ContactOnline;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ContactOnline;->emptyTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline;->emptyTextView:Landroid/widget/TextView;

    const v2, -0x7f7f80

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline;->emptyTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v0, v8, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline;->emptyTextView:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline;->emptyTextView:Landroid/widget/TextView;

    const-string/jumbo v2, "NoContacts"

    const v3, 0x7f08034a

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline;->emptyTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline;->emptyTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v9, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v9, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v10, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v2, p0, Lorg/telegram/ui/ContactOnline;->emptyTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v9, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v9, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v10, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/LetterSectionsListView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/LetterSectionsListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ContactOnline;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LetterSectionsListView;->setEmptyView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/LetterSectionsListView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LetterSectionsListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/LetterSectionsListView;->setDividerHeight(I)V

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/LetterSectionsListView;->setFastScrollEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LetterSectionsListView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    iget-object v1, p0, Lorg/telegram/ui/ContactOnline;->listViewAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LetterSectionsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/LetterSectionsListView;->setFastScrollAlwaysVisible(Z)V

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_5

    :goto_2
    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/LetterSectionsListView;->setVerticalScrollbarPosition(I)V

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/ContactOnline;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LetterSectionsListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v9, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v9, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v1, p0, Lorg/telegram/ui/ContactOnline;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/LetterSectionsListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    new-instance v1, Lorg/telegram/ui/ContactOnline$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ContactOnline$3;-><init>(Lorg/telegram/ui/ContactOnline;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LetterSectionsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;

    new-instance v1, Lorg/telegram/ui/ContactOnline$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ContactOnline$4;-><init>(Lorg/telegram/ui/ContactOnline;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LetterSectionsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline;->fragmentView:Landroid/view/View;

    return-object v0

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/ContactOnline;->createSecretChat:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "NewSecretChat"

    const v2, 0x7f080340

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ContactOnline;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "NewMessageTitle"

    const v2, 0x7f080339

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ContactOnline;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "onlineContact"

    const v2, 0x7f080760

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_4
    move v7, v4

    goto/16 :goto_1

    :cond_5
    const/4 v8, 0x2

    goto :goto_2
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 4

    const/4 v3, 0x0

    sget v0, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline;->listViewAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline;->listViewAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->notifyDataSetChanged()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    if-ne p1, v0, :cond_3

    aget-object v0, p2, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_2

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_2

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    :cond_2
    invoke-direct {p0, v0}, Lorg/telegram/ui/ContactOnline;->updateVisibleRows(I)V

    goto :goto_0

    :cond_3
    sget v0, Lorg/telegram/messenger/NotificationCenter;->encryptedChatCreated:I

    if-ne p1, v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/ContactOnline;->createSecretChat:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ContactOnline;->creatingChat:Z

    if-eqz v0, :cond_0

    aget-object v0, p2, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "enc_id"

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    new-instance v0, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v0, v1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/ContactOnline;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    const-string/jumbo v0, "LOG"

    const-string/jumbo v1, "is contact activity 01"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lorg/telegram/ui/ContactOnline;->finishFragment()V

    goto :goto_0

    :cond_4
    sget v0, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ContactOnline;->creatingChat:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ContactOnline;->removeSelfFromStack()V

    goto :goto_0
.end method

.method public onFragmentCreate()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->encryptedChatCreated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline;->arguments:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ContactOnline;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "onlyUsers"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactOnline;->onlyUsers:Z

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline;->arguments:Landroid/os/Bundle;

    const-string/jumbo v1, "destroyAfterSelect"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactOnline;->destroyAfterSelect:Z

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline;->arguments:Landroid/os/Bundle;

    const-string/jumbo v1, "returnAsResult"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactOnline;->returnAsResult:Z

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline;->arguments:Landroid/os/Bundle;

    const-string/jumbo v1, "createSecretChat"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactOnline;->createSecretChat:Z

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline;->arguments:Landroid/os/Bundle;

    const-string/jumbo v1, "selectAlertString"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ContactOnline;->selectAlertString:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline;->arguments:Landroid/os/Bundle;

    const-string/jumbo v1, "allowUsernameSearch"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactOnline;->allowUsernameSearch:Z

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline;->arguments:Landroid/os/Bundle;

    const-string/jumbo v1, "needForwardCount"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactOnline;->needForwardCount:Z

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline;->arguments:Landroid/os/Bundle;

    const-string/jumbo v1, "allowBots"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactOnline;->allowBots:Z

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline;->arguments:Landroid/os/Bundle;

    const-string/jumbo v1, "chat_id"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ContactOnline;->chat_id:I

    :goto_0
    invoke-static {}, Lorg/telegram/messenger/CContactsController;->getInstance()Lorg/telegram/messenger/CContactsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/CContactsController;->checkInviteText()V

    return v3

    :cond_0
    iput-boolean v3, p0, Lorg/telegram/ui/ContactOnline;->needPhonebook:Z

    goto :goto_0
.end method

.method public onFragmentDestroy()V
    .locals 2

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->encryptedChatCreated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ContactOnline;->delegate:Lorg/telegram/ui/ContactOnline$ContactOnlineDelegate;

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline;->listViewAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ContactOnline;->listViewAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/ContactOnline$ContactOnlineDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ContactOnline;->delegate:Lorg/telegram/ui/ContactOnline$ContactOnlineDelegate;

    return-void
.end method

.method public setIgnoreUsers(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/telegram/ui/ContactOnline;->ignoreUsers:Ljava/util/HashMap;

    return-void
.end method
