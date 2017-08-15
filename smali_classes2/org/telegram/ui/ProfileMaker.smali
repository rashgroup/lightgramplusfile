.class public Lorg/telegram/ui/ProfileMaker;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ProfileMaker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ProfileMaker$OnlineThemeDelegate;
    }
.end annotation


# static fields
.field public static dialogsLoaded:Z

.field private static mainFragmentsStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ProgressView:Landroid/app/ProgressDialog;

.field private actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

.field ch:Landroid/widget/CheckBox;

.field change_01:Landroid/widget/TextView;

.field change_01a:Landroid/widget/RelativeLayout;

.field change_02:Landroid/widget/TextView;

.field change_02a:Landroid/widget/RelativeLayout;

.field change_03:Landroid/widget/TextView;

.field change_03a:Landroid/widget/RelativeLayout;

.field change_04:Landroid/widget/TextView;

.field change_04a:Landroid/widget/RelativeLayout;

.field change_05:Landroid/widget/TextView;

.field change_05a:Landroid/widget/RelativeLayout;

.field change_06:Landroid/widget/TextView;

.field change_07:Landroid/widget/TextView;

.field change_08:Landroid/widget/TextView;

.field change_09:Landroid/widget/TextView;

.field change_10:Landroid/widget/TextView;

.field change_11:Landroid/widget/TextView;

.field change_12:Landroid/widget/TextView;

.field change_13:Landroid/widget/TextView;

.field change_14:Landroid/widget/TextView;

.field change_15:Landroid/widget/TextView;

.field change_16:Landroid/widget/TextView;

.field change_17:Landroid/widget/TextView;

.field change_18:Landroid/widget/TextView;

.field change_19:Landroid/widget/TextView;

.field change_20:Landroid/widget/TextView;

.field change_21:Landroid/widget/TextView;

.field change_22:Landroid/widget/TextView;

.field change_23:Landroid/widget/TextView;

.field change_case:Landroid/widget/TextView;

.field clip_01:Landroid/widget/FrameLayout;

.field clip_02:Landroid/widget/FrameLayout;

.field clip_03:Landroid/widget/FrameLayout;

.field clip_04:Landroid/widget/FrameLayout;

.field clip_05:Landroid/widget/FrameLayout;

.field clip_06:Landroid/widget/FrameLayout;

.field clip_07:Landroid/widget/FrameLayout;

.field clip_08:Landroid/widget/FrameLayout;

.field clip_09:Landroid/widget/FrameLayout;

.field clip_10:Landroid/widget/FrameLayout;

.field clip_11:Landroid/widget/FrameLayout;

.field clip_12:Landroid/widget/FrameLayout;

.field clip_13:Landroid/widget/FrameLayout;

.field clip_14:Landroid/widget/FrameLayout;

.field clip_15:Landroid/widget/FrameLayout;

.field clip_16:Landroid/widget/FrameLayout;

.field clip_17:Landroid/widget/FrameLayout;

.field clip_18:Landroid/widget/FrameLayout;

.field clip_19:Landroid/widget/FrameLayout;

.field clip_20:Landroid/widget/FrameLayout;

.field clip_21:Landroid/widget/FrameLayout;

.field clip_22:Landroid/widget/FrameLayout;

.field clip_23:Landroid/widget/FrameLayout;

.field continue_ly:Landroid/widget/RelativeLayout;

.field private delegate:Lorg/telegram/ui/ProfileMaker$OnlineThemeDelegate;

.field private doneButton:Landroid/view/View;

.field ed_last_name:Landroid/widget/EditText;

.field ed_name:Landroid/widget/EditText;

.field private emptyView:Landroid/widget/LinearLayout;

.field fr_01:Landroid/widget/FrameLayout;

.field fr_02:Landroid/widget/FrameLayout;

.field fr_03:Landroid/widget/FrameLayout;

.field fr_04:Landroid/widget/FrameLayout;

.field fr_05:Landroid/widget/FrameLayout;

.field fr_06:Landroid/widget/FrameLayout;

.field fr_07:Landroid/widget/FrameLayout;

.field fr_08:Landroid/widget/FrameLayout;

.field fr_09:Landroid/widget/FrameLayout;

.field fr_10:Landroid/widget/FrameLayout;

.field fr_11:Landroid/widget/FrameLayout;

.field fr_12:Landroid/widget/FrameLayout;

.field fr_13:Landroid/widget/FrameLayout;

.field fr_14:Landroid/widget/FrameLayout;

.field fr_15:Landroid/widget/FrameLayout;

.field fr_16:Landroid/widget/FrameLayout;

.field fr_17:Landroid/widget/FrameLayout;

.field fr_18:Landroid/widget/FrameLayout;

.field fr_19:Landroid/widget/FrameLayout;

.field fr_20:Landroid/widget/FrameLayout;

.field fr_21:Landroid/widget/FrameLayout;

.field fr_22:Landroid/widget/FrameLayout;

.field fr_23:Landroid/widget/FrameLayout;

.field private fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private headerLabelView:Landroid/view/View;

.field last_name:Landroid/widget/TextView;

.field private layoutManager_:Landroid/support/v7/widget/LinearLayoutManager;

.field list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field list2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private listView:Landroid/support/v7/widget/RecyclerView;

.field list_main:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ln:Landroid/widget/LinearLayout;

.field main_io:Landroid/widget/LinearLayout;

.field main_ly:Landroid/widget/LinearLayout;

.field make_name:Landroid/widget/TextView;

.field name:Landroid/widget/TextView;

.field newFirst:Ljava/lang/String;

.field other_ki:Ljava/lang/String;

.field other_km:Ljava/lang/String;

.field private progressView:Landroid/widget/ProgressBar;

.field scroll:Landroid/widget/ScrollView;

.field scrolla:Landroid/widget/ScrollView;

.field str:Ljava/lang/String;

.field private visibleDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/ui/ProfileMaker;->mainFragmentsStack:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ProfileMaker;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileMaker;->saveName1()V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/ProfileMaker;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileMaker;->saveName2()V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ProfileMaker;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileMaker;->saveName11()V

    return-void
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ProfileMaker;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileMaker;->saveName12()V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ProfileMaker;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileMaker;->saveName13()V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ProfileMaker;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileMaker;->saveName14()V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/ui/ProfileMaker;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileMaker;->saveName15()V

    return-void
.end method

.method static synthetic access$1500(Lorg/telegram/ui/ProfileMaker;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileMaker;->saveName16()V

    return-void
.end method

.method static synthetic access$1600(Lorg/telegram/ui/ProfileMaker;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileMaker;->saveName17()V

    return-void
.end method

.method static synthetic access$1700(Lorg/telegram/ui/ProfileMaker;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileMaker;->saveName18()V

    return-void
.end method

.method static synthetic access$1800(Lorg/telegram/ui/ProfileMaker;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileMaker;->saveName19()V

    return-void
.end method

.method static synthetic access$1900(Lorg/telegram/ui/ProfileMaker;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileMaker;->saveName20()V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/ProfileMaker;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileMaker;->saveName3()V

    return-void
.end method

.method static synthetic access$2000(Lorg/telegram/ui/ProfileMaker;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileMaker;->saveName21()V

    return-void
.end method

.method static synthetic access$2100(Lorg/telegram/ui/ProfileMaker;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileMaker;->saveName22()V

    return-void
.end method

.method static synthetic access$2200(Lorg/telegram/ui/ProfileMaker;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileMaker;->saveName23()V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/ui/ProfileMaker;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileMaker;->saveName4()V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/ProfileMaker;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileMaker;->saveName5()V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/ProfileMaker;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileMaker;->saveName6()V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/ProfileMaker;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileMaker;->saveName7()V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/ui/ProfileMaker;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileMaker;->saveName8()V

    return-void
.end method

.method static synthetic access$800(Lorg/telegram/ui/ProfileMaker;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileMaker;->saveName9()V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/ui/ProfileMaker;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileMaker;->saveName10()V

    return-void
.end method

.method private saveName1()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_last_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->arraysplator1(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v0, ""

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u2582\u2583\u2584\u2585\u2586\u2587\u2588\u2593\u2592\u2591"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u2591\u2592\u2593\u2588\u2587\u2586\u2585\u2584\u2583\u2582"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_last_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;-><init>()V

    const/4 v3, 0x3

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->flags:I

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->first_name:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->last_name:Ljava/lang/String;

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->first_name:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->last_name:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    :cond_4
    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/ProfileMaker$5;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ProfileMaker$5;-><init>(Lorg/telegram/ui/ProfileMaker;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u2582\u2583\u2584\u2585\u2586\u2587\u2588\u2593\u2592\u2591"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u2591\u2592\u2593\u2588\u2587\u2586\u2585\u2584\u2583\u2582"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method private saveName10()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_last_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->arraysplator5(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v0, ""

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u02d9\u0387\u0660\u2022\u25cf\u2665"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u2665\u25cf\u2022\u0660\u0387\u02d9"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_last_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;-><init>()V

    const/4 v3, 0x3

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->flags:I

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->first_name:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->last_name:Ljava/lang/String;

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->first_name:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->last_name:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    :cond_4
    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/ProfileMaker$14;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ProfileMaker$14;-><init>(Lorg/telegram/ui/ProfileMaker;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u02d9\u0387\u0660\u2022\u25cf\u2665"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u2665\u25cf\u2022\u0660\u0387\u02d9"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method private saveName11()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_last_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->arraysplator5(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v0, ""

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u25cf\u25ac\u25ac\u0e51\u06e9\u06e9\u0e51"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u0e51\u06e9\u06e9\u0e51\u25ac\u25ac\u25cf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_last_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;-><init>()V

    const/4 v3, 0x3

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->flags:I

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->first_name:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->last_name:Ljava/lang/String;

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->first_name:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->last_name:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    :cond_4
    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/ProfileMaker$15;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ProfileMaker$15;-><init>(Lorg/telegram/ui/ProfileMaker;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u25cf\u25ac\u25ac\u0e51\u06e9\u06e9\u0e51"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u0e51\u06e9\u06e9\u0e51\u25ac\u25ac\u25cf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method private saveName12()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_last_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->arraysplator5(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v0, ""

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "( \uff65_\uff65)\u00bb(\uff9f\uff70\uff9f)\u00bb"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u00ab(\uff9f\uff70\uff9f)\u00ab( \uff65_\uff65)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_last_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;-><init>()V

    const/4 v3, 0x3

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->flags:I

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->first_name:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->last_name:Ljava/lang/String;

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->first_name:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->last_name:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    :cond_4
    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/ProfileMaker$16;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ProfileMaker$16;-><init>(Lorg/telegram/ui/ProfileMaker;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "( \uff65_\uff65)\u00bb(\uff9f\uff70\uff9f)\u00bb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u00ab(\uff9f\uff70\uff9f)\u00ab( \uff65_\uff65)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method private saveName13()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_last_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->arraysplator5(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v0, ""

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u0b9c\u06e9\u06e9\u0b9c "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u0b9c\u06e9\u06e9\u0b9c "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_last_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;-><init>()V

    const/4 v3, 0x3

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->flags:I

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->first_name:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->last_name:Ljava/lang/String;

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->first_name:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->last_name:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    :cond_4
    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/ProfileMaker$17;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ProfileMaker$17;-><init>(Lorg/telegram/ui/ProfileMaker;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u0b9c\u06e9\u06e9\u0b9c "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u0b9c\u06e9\u06e9\u0b9c "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method private saveName14()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_last_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->arraysplator5(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v0, ""

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u2730\u2730(\u00af`*\u2022."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".\u2022*\u00b4\u00af)\u2730\u2730"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_last_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;-><init>()V

    const/4 v3, 0x3

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->flags:I

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->first_name:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->last_name:Ljava/lang/String;

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->first_name:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->last_name:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    :cond_4
    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/ProfileMaker$18;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ProfileMaker$18;-><init>(Lorg/telegram/ui/ProfileMaker;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u2730\u2730(\u00af`*\u2022."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".\u2022*\u00b4\u00af)\u2730\u2730"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method private saveName15()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_last_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->arraysplator5(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v0, ""

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(\u273f\u25e0\u203f\u25e0\u2665)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "(\u2665\u25e0\u203f\u25e0\u273f)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_last_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;-><init>()V

    const/4 v3, 0x3

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->flags:I

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->first_name:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->last_name:Ljava/lang/String;

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->first_name:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->last_name:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    :cond_4
    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/ProfileMaker$19;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ProfileMaker$19;-><init>(Lorg/telegram/ui/ProfileMaker;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "(\u273f\u25e0\u203f\u25e0\u2665)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "(\u2665\u25e0\u203f\u25e0\u273f)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method private saveName16()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_last_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->arraysplator5(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v0, ""

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u2022\u00a4\u00bb((\u00af\u2665\u00af))\u00ab\u00a4\u2022"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u2022\u00a4\u00bb((\u00af\u2665\u00af))\u00ab\u00a4\u2022"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_last_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;-><init>()V

    const/4 v3, 0x3

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->flags:I

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->first_name:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->last_name:Ljava/lang/String;

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->first_name:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->last_name:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    :cond_4
    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/ProfileMaker$20;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ProfileMaker$20;-><init>(Lorg/telegram/ui/ProfileMaker;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u2022\u00a4\u00bb((\u00af\u2665\u00af))\u00ab\u00a4\u2022"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u2022\u00a4\u00bb((\u00af\u2665\u00af))\u00ab\u00a4\u2022"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method private saveName17()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_last_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->arraysplator5(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v0, ""

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u2219\u2219\u2219\u2219\u2219\u00b7\u25ab\u25ab\u1d52\u1d3c\u1d52 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u1d52\u1d3c\u1d52\u25ab\u25ab\u00b7\u2219\u2219\u2219\u2219\u2219 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_last_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;-><init>()V

    const/4 v3, 0x3

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->flags:I

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->first_name:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->last_name:Ljava/lang/String;

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->first_name:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->last_name:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    :cond_4
    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/ProfileMaker$21;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ProfileMaker$21;-><init>(Lorg/telegram/ui/ProfileMaker;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u2219\u2219\u2219\u2219\u2219\u00b7\u25ab\u25ab\u1d52\u1d3c\u1d52 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u1d52\u1d3c\u1d52\u25ab\u25ab\u00b7\u2219\u2219\u2219\u2219\u2219 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method private saveName18()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_last_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->arraysplator5(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v0, ""

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u02d9\u0387\u0660\u2022\u25cf\u2665 \u01b8\u0335\u0321\u04dc\u0335\u0328\u0304\u01b7"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u01b8\u0335\u0321\u04dc\u0335\u0328\u0304\u01b7 \u2665\u25cf\u2022\u0660\u0387\u02d9"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_last_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;-><init>()V

    const/4 v3, 0x3

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->flags:I

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->first_name:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->last_name:Ljava/lang/String;

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->first_name:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->last_name:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    :cond_4
    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/ProfileMaker$22;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ProfileMaker$22;-><init>(Lorg/telegram/ui/ProfileMaker;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u02d9\u0387\u0660\u2022\u25cf\u2665 \u01b8\u0335\u0321\u04dc\u0335\u0328\u0304\u01b7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u01b8\u0335\u0321\u04dc\u0335\u0328\u0304\u01b7 \u2665\u25cf\u2022\u0660\u0387\u02d9"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method private saveName19()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_last_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->arraysplator5(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v0, ""

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " \u266a\u266b\u2022*\u00a8*\u2022.\u00b8\u00b8\u2764"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " \u2764\u00b8\u00b8.\u2022*\u00a8*\u2022\u266b\u266a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_last_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;-><init>()V

    const/4 v3, 0x3

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->flags:I

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->first_name:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->last_name:Ljava/lang/String;

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->first_name:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->last_name:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    :cond_4
    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/ProfileMaker$23;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ProfileMaker$23;-><init>(Lorg/telegram/ui/ProfileMaker;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " \u266a\u266b\u2022*\u00a8*\u2022.\u00b8\u00b8\u2764"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " \u2764\u00b8\u00b8.\u2022*\u00a8*\u2022\u266b\u266a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method private saveName2()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_last_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->arraysplator2(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v0, ""

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(\u00af`\u273f.\u00b8(\u00af`\u2019\u2665."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".\u2665\u2019\u00b4\u00af)\u00b8.\u273f \u2018\u00b4\u00af)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_last_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;-><init>()V

    const/4 v3, 0x3

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->flags:I

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->first_name:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->last_name:Ljava/lang/String;

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->first_name:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->last_name:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    :cond_4
    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/ProfileMaker$6;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ProfileMaker$6;-><init>(Lorg/telegram/ui/ProfileMaker;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "(\u00af`\u273f.\u00b8(\u00af`\u2019\u2665."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".\u2665\u2019\u00b4\u00af)\u00b8.\u273f \u2018\u00b4\u00af)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method private saveName20()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_last_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->arraysplator5(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v0, ""

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u2013\u2013\u2013\u2013\u2022(-\u2022 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u2022-)\u2022\u2013\u2013\u2013\u2013"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_last_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;-><init>()V

    const/4 v3, 0x3

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->flags:I

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->first_name:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->last_name:Ljava/lang/String;

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->first_name:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->last_name:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    :cond_4
    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/ProfileMaker$24;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ProfileMaker$24;-><init>(Lorg/telegram/ui/ProfileMaker;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u2013\u2013\u2013\u2013\u2022(-\u2022 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u2022-)\u2022\u2013\u2013\u2013\u2013"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method private saveName21()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_last_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->arraysplator5(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v0, ""

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " .:**:.\u2606*.:\uff61.\u273f"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u273f.\uff61.:* \u2606:**:."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_last_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;-><init>()V

    const/4 v3, 0x3

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->flags:I

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->first_name:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->last_name:Ljava/lang/String;

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->first_name:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->last_name:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    :cond_4
    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/ProfileMaker$25;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ProfileMaker$25;-><init>(Lorg/telegram/ui/ProfileMaker;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " .:**:.\u2606*.:\uff61.\u273f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u273f.\uff61.:* \u2606:**:."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method private saveName22()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_last_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->arraysplator5(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v0, ""

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u0131l\u0131ll|\u0332\u0305\u0305\u25cf\u0332\u0305\u0305|\u0332\u0305\u0305=\u0332\u0305\u0305|\u0332\u0305\u0305\u25cf\u0332\u0305\u0305|ll\u0131l\u0131"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u0131l\u0131ll|\u0332\u0305\u0305\u25cf\u0332\u0305\u0305|\u0332\u0305\u0305=\u0332\u0305\u0305|\u0332\u0305\u0305\u25cf\u0332\u0305\u0305|ll\u0131l\u0131"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_last_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;-><init>()V

    const/4 v3, 0x3

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->flags:I

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->first_name:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->last_name:Ljava/lang/String;

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->first_name:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->last_name:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    :cond_4
    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/ProfileMaker$26;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ProfileMaker$26;-><init>(Lorg/telegram/ui/ProfileMaker;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u0131l\u0131ll|\u0332\u0305\u0305\u25cf\u0332\u0305\u0305|\u0332\u0305\u0305=\u0332\u0305\u0305|\u0332\u0305\u0305\u25cf\u0332\u0305\u0305|ll\u0131l\u0131"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u0131l\u0131ll|\u0332\u0305\u0305\u25cf\u0332\u0305\u0305|\u0332\u0305\u0305=\u0332\u0305\u0305|\u0332\u0305\u0305\u25cf\u0332\u0305\u0305|ll\u0131l\u0131"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method private saveName23()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_last_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->arraysplator5(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v0, ""

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u2730\u2730(\u00af`*\u2022.\u00b8,\u00a4\u00b0 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u00b0\u00a4,\u00b8.\u2022*\u00b4\u00af)\u2730\u2730"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_last_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;-><init>()V

    const/4 v3, 0x3

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->flags:I

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->first_name:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->last_name:Ljava/lang/String;

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->first_name:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->last_name:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    :cond_4
    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/ProfileMaker$27;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ProfileMaker$27;-><init>(Lorg/telegram/ui/ProfileMaker;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u2730\u2730(\u00af`*\u2022.\u00b8,\u00a4\u00b0 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u00b0\u00a4,\u00b8.\u2022*\u00b4\u00af)\u2730\u2730"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method private saveName24()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_last_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->arraysplator5(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v0, ""

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u266a\u266b\u2022*\u00a8*\u2022.\u00b8\u00b8 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u00b8\u00b8.\u2022*\u00a8*\u2022\u266b\u266a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_last_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;-><init>()V

    const/4 v3, 0x3

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->flags:I

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->first_name:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->last_name:Ljava/lang/String;

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->first_name:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->last_name:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    :cond_4
    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/ProfileMaker$28;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ProfileMaker$28;-><init>(Lorg/telegram/ui/ProfileMaker;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method private saveName25()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_last_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->arraysplator5(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v0, ""

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u2014(\u2022\u00b7\u00f7[ "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]\u00f7\u00b7\u2022)\u2014"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_last_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;-><init>()V

    const/4 v3, 0x3

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->flags:I

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->first_name:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->last_name:Ljava/lang/String;

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->first_name:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->last_name:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    :cond_4
    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/ProfileMaker$29;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ProfileMaker$29;-><init>(Lorg/telegram/ui/ProfileMaker;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method private saveName26()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_last_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->arraysplator5(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v0, ""

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u2606:*\u00b4\u00a8`*:.\u2606(\u00af`*\u2022.\u00b8,\u00a4\u00b0\u00b4 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u2606:*\u00b4\u00a8`*:.\u2606(\u00af`*\u2022.\u00b8,\u00a4\u00b0\u00b4 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_last_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;-><init>()V

    const/4 v3, 0x3

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->flags:I

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->first_name:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->last_name:Ljava/lang/String;

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->first_name:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->last_name:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    :cond_4
    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/ProfileMaker$30;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ProfileMaker$30;-><init>(Lorg/telegram/ui/ProfileMaker;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method private saveName3()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_last_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->arraysplator3(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v0, ""

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u02dc\u201d*\u00b0\u2022.\u02dc\u201d*\u00b0\u2022"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u2022\u00b0*\u201d\u02dc.\u2022\u00b0*\u201d\u02dc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_last_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;-><init>()V

    const/4 v3, 0x3

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->flags:I

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->first_name:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->last_name:Ljava/lang/String;

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->first_name:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->last_name:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    :cond_4
    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/ProfileMaker$7;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ProfileMaker$7;-><init>(Lorg/telegram/ui/ProfileMaker;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u02dc\u201d*\u00b0\u2022.\u02dc\u201d*\u00b0\u2022"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u2022\u00b0*\u201d\u02dc.\u2022\u00b0*\u201d\u02dc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method private saveName4()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_last_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->arraysplator4(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v0, ""

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u25d4\u035c\u0361\u25d4 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " \u25d4\u035c\u0361\u25d4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_last_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;-><init>()V

    const/4 v3, 0x3

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->flags:I

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->first_name:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->last_name:Ljava/lang/String;

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->first_name:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->last_name:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    :cond_4
    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/ProfileMaker$8;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ProfileMaker$8;-><init>(Lorg/telegram/ui/ProfileMaker;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u25d4\u035c\u0361\u25d4 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " \u25d4\u035c\u0361\u25d4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method private saveName5()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_last_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->arraysplator5(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v0, ""

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u2018\u00b0\u00ba\u00f8\u2022\u2764\u2022.\u00b8"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u00b8.\u2022\u2764\u2022\u00f8\u00ba\u00b0\u2018"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_last_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;-><init>()V

    const/4 v3, 0x3

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->flags:I

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->first_name:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->last_name:Ljava/lang/String;

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->first_name:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->last_name:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    :cond_4
    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/ProfileMaker$9;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ProfileMaker$9;-><init>(Lorg/telegram/ui/ProfileMaker;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u2018\u00b0\u00ba\u00f8\u2022\u2764\u2022.\u00b8"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u00b8.\u2022\u2764\u2022\u00f8\u00ba\u00b0\u2018"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method private saveName6()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_last_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->arraysplator5(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v0, ""

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u25e6\u2022\u25cf\u25c9\u273f"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u273f\u25c9\u25cf\u2022\u25e6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_last_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;-><init>()V

    const/4 v3, 0x3

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->flags:I

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->first_name:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->last_name:Ljava/lang/String;

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->first_name:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->last_name:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    :cond_4
    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/ProfileMaker$10;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ProfileMaker$10;-><init>(Lorg/telegram/ui/ProfileMaker;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u25e6\u2022\u25cf\u25c9\u273f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u273f\u25c9\u25cf\u2022\u25e6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method private saveName7()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_last_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->arraysplator5(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v0, ""

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ".\u2022\u266b\u2022\u266c\u2022"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u2022\u266c\u2022\u266b\u2022."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_last_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;-><init>()V

    const/4 v3, 0x3

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->flags:I

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->first_name:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->last_name:Ljava/lang/String;

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->first_name:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->last_name:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    :cond_4
    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/ProfileMaker$11;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ProfileMaker$11;-><init>(Lorg/telegram/ui/ProfileMaker;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ".\u2022\u266b\u2022\u266c\u2022"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u2022\u266c\u2022\u266b\u2022."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method private saveName8()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_last_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->arraysplator5(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v0, ""

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u266a\u266b\u2022*\u00a8*\u2022.\u00b8\u00b8"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u00b8.\u2022*\u00a8*\u2022\u266b\u266a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_last_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;-><init>()V

    const/4 v3, 0x3

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->flags:I

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->first_name:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->last_name:Ljava/lang/String;

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->first_name:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->last_name:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    :cond_4
    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/ProfileMaker$12;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ProfileMaker$12;-><init>(Lorg/telegram/ui/ProfileMaker;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u266a\u266b\u2022*\u00a8*\u2022.\u00b8\u00b8"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u00b8.\u2022*\u00a8*\u2022\u266b\u266a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method private saveName9()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_last_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->arraysplator5(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v0, ""

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(#)o\u00b0*\u00b0o..(#)..o\u00b0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "(#)o\u00b0*\u00b0o..(#)..o\u00b0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_last_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;-><init>()V

    const/4 v3, 0x3

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->flags:I

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->first_name:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->last_name:Ljava/lang/String;

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->first_name:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->last_name:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    :cond_4
    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/ProfileMaker$13;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ProfileMaker$13;-><init>(Lorg/telegram/ui/ProfileMaker;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "(#)o\u00b0*\u00b0o..(#)..o\u00b0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "(#)o\u00b0*\u00b0o..(#)..o\u00b0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->newFirst:Ljava/lang/String;

    goto/16 :goto_2
.end method


# virtual methods
.method public Change_name1(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_119

    aget-object v2, v1, v0

    iput-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x2

    if-ne v0, v2, :cond_8d

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "q"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "Q"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string/jumbo v2, "\u01aa"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "w"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "W"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const-string/jumbo v2, "\u2c73"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "e"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "E"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    const-string/jumbo v2, "\u2c78"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "r"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "R"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    const-string/jumbo v2, "\u0213"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "t"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "T"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    const-string/jumbo v2, "\u01ab"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "y"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "Y"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_a
    const-string/jumbo v2, "\u01b4"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "u"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "U"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_c
    const-string/jumbo v2, "\u0215"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "i"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "I"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_e
    const-string/jumbo v2, "\u00a1"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "o"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "O"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_10
    const-string/jumbo v2, "\u2c7a"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "p"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "P"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_12
    const-string/jumbo v2, "\u01f7"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "A"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    :cond_14
    const-string/jumbo v2, "\u00e1"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "S"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    :cond_16
    const-string/jumbo v2, "\u015f"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "d"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "D"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    :cond_18
    const-string/jumbo v2, "\u018c"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "f"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "F"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    :cond_1a
    const-string/jumbo v2, "\u0192"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "g"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "G"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    :cond_1c
    const-string/jumbo v2, "\u011d"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "h"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "H"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    :cond_1e
    const-string/jumbo v2, "\u2c68"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1f
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "j"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "J"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    :cond_20
    const-string/jumbo v2, "j"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "k"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "K"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    :cond_22
    const-string/jumbo v2, "\u0199"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_23
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "l"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "L"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    :cond_24
    const-string/jumbo v2, "\u2c61"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "z"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "Z"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    :cond_26
    const-string/jumbo v2, "\u01b6"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_27
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "X"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    :cond_28
    const-string/jumbo v2, "\u00d7"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "C"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    :cond_2a
    const-string/jumbo v2, "\u0188"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2b
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "v"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "V"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    :cond_2c
    const-string/jumbo v2, "\u2c74"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2d
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "b"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "B"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    :cond_2e
    const-string/jumbo v2, "\u00fe"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2f
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "N"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    :cond_30
    const-string/jumbo v2, "\u019e"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "m"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "M"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    :cond_32
    const-string/jumbo v2, "\u1e43"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_33
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    const-string/jumbo v2, "?"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_34
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u061f"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    const-string/jumbo v2, "\u061f"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_35
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0635"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    const-string/jumbo v2, "\u0635"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_36
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    const-string/jumbo v2, "."

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_37
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    const-string/jumbo v2, "!"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_38
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    const-string/jumbo v2, "@"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_39
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    const-string/jumbo v2, "#"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3a
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    const-string/jumbo v2, "$"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3b
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    const-string/jumbo v2, "%"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3c
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "^"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    const-string/jumbo v2, "^"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3d
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    const-string/jumbo v2, "&"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3e
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    const-string/jumbo v2, ")"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3f
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    const-string/jumbo v2, "("

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_40
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    const-string/jumbo v2, "-"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_41
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    const-string/jumbo v2, "_"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_42
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    const-string/jumbo v2, "="

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_43
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    const-string/jumbo v2, "+"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_44
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    const-string/jumbo v2, "-"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_45
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    const-string/jumbo v2, "*"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_46
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    const-string/jumbo v2, "/"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_47
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u060c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    const-string/jumbo v2, "\u060c"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_48
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u2019"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    const-string/jumbo v2, "\u2019"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_49
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    const-string/jumbo v2, ":"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4a
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    const-string/jumbo v2, "<"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4b
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    const-string/jumbo v2, ">"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4c
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u061b"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    const-string/jumbo v2, "\u061b"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4d
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u00a9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    const-string/jumbo v2, "\u00a9"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4e
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    const-string/jumbo v2, "}"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4f
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    const-string/jumbo v2, "{"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_50
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    const-string/jumbo v2, "["

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_51
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    const-string/jumbo v2, "]"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_52
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u00ab"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    const-string/jumbo v2, "\u00ab"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_53
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u00bb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    const-string/jumbo v2, "\u00bb"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_54
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    const-string/jumbo v2, "\u06f1"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_55
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    const-string/jumbo v2, "\u06f2"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_56
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    const-string/jumbo v2, "\u06f3"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_57
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    const-string/jumbo v2, "\u06f4"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_58
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    const-string/jumbo v2, "\u06f5"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_59
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f7"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    const-string/jumbo v2, "\u06f7"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5a
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    const-string/jumbo v2, "\u06f6"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5b
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    const-string/jumbo v2, "\u06f8"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5c
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    const-string/jumbo v2, "\u06f9"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5d
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    const-string/jumbo v2, "\u06f0"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5e
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    const-string/jumbo v2, "1"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5f
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    const-string/jumbo v2, "2"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_60
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    const-string/jumbo v2, "3"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_61
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    const-string/jumbo v2, "4"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_62
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    const-string/jumbo v2, "5"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_63
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    const-string/jumbo v2, "6"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_64
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "7"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    const-string/jumbo v2, "7"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_65
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    const-string/jumbo v2, "8"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_66
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    const-string/jumbo v2, "9"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_67
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    const-string/jumbo v2, "0"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_68
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0647"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    const-string/jumbo v2, "\ufba9"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_69
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06cc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    const-string/jumbo v2, "\u0640\u0640\u0640\u06d2\u0650\u0650"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6a
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0644"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    const-string/jumbo v2, "\u06b6"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6b
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0622"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6c

    const-string/jumbo v2, "\u0622"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6c
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0627"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    const-string/jumbo v2, "\u0627"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6d
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0623"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    const-string/jumbo v2, "\u0623"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6e
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0625"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6f

    const-string/jumbo v2, "\u0625"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6f
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0636"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_70

    const-string/jumbo v2, "\u06fb"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_70
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062b"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    const-string/jumbo v2, "\u062b"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_71
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0630"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    const-string/jumbo v2, "\u0630"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_72
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0632"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    const-string/jumbo v2, "\u0632"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_73
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0698"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    const-string/jumbo v2, "\u076b"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_74
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0642"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    const-string/jumbo v2, "\u06a8"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_75
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0641"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_76

    const-string/jumbo v2, "\u06a6"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_76
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u063a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_77

    const-string/jumbo v2, "\u06a0"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_77
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0639"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_78

    const-string/jumbo v2, "\u0639"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_78
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062e"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_79

    const-string/jumbo v2, "\u0682"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_79
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7a

    const-string/jumbo v2, "\u0684"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7a
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0686"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    const-string/jumbo v2, "\u0758"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7b
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062f"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    const-string/jumbo v2, "\u062f"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7c
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0628"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7d

    const-string/jumbo v2, "\u0755"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7d
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0633"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    const-string/jumbo v2, "\u076d"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7e
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06a9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7f

    const-string/jumbo v2, "\u06ad"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7f
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06af"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    const-string/jumbo v2, "\u06b4"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_80
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u067e"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_81

    const-string/jumbo v2, "\u0680"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_81
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0631"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_82

    const-string/jumbo v2, "\u0696"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_82
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0648"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_83

    const-string/jumbo v2, "\u06cf"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_83
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0645"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_84

    const-string/jumbo v2, "\u0766"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_84
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_85

    const-string/jumbo v2, "\u0753"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_85
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0634"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_86

    const-string/jumbo v2, "\u06fa"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_86
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0646"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_87

    const-string/jumbo v2, "\u06ba"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_87
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0637"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    const-string/jumbo v2, "\u0637"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_88
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062d"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_89

    const-string/jumbo v2, "\u0681"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_89
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0638"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    const-string/jumbo v2, "\u0638"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8a
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    const-string/jumbo v2, " "

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8b
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0635"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8c

    const-string/jumbo v2, "\u0635"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8c
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_8d
    array-length v2, v1

    if-gt v0, v2, :cond_8c

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "q"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8e

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "Q"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8f

    :cond_8e
    const-string/jumbo v2, "\u01aa"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8f
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "w"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_90

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "W"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_91

    :cond_90
    const-string/jumbo v2, "\u2c73"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_91
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "e"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_92

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "E"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_93

    :cond_92
    const-string/jumbo v2, "\u2c78"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_93
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "r"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_94

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "R"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_95

    :cond_94
    const-string/jumbo v2, "\u0213"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_95
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "t"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_96

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "T"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_97

    :cond_96
    const-string/jumbo v2, "\u01ab"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_97
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "y"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_98

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "Y"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_99

    :cond_98
    const-string/jumbo v2, "\u01b4"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_99
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "u"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9a

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "U"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9b

    :cond_9a
    const-string/jumbo v2, "\u0215"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9b
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "i"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9c

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "I"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9d

    :cond_9c
    const-string/jumbo v2, "\u00a1"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9d
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "o"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9e

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "O"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9f

    :cond_9e
    const-string/jumbo v2, "\u2c7a"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9f
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "p"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a0

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "P"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a1

    :cond_a0
    const-string/jumbo v2, "\u01f7"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a1
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a2

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "A"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a3

    :cond_a2
    const-string/jumbo v2, "\u00e1"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a3
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a4

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "S"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a5

    :cond_a4
    const-string/jumbo v2, "\u015f"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a5
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "d"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a6

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "D"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a7

    :cond_a6
    const-string/jumbo v2, "\u018c"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a7
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "f"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a8

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "F"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a9

    :cond_a8
    const-string/jumbo v2, "\u0192"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a9
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "g"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_aa

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "G"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ab

    :cond_aa
    const-string/jumbo v2, "\u011d"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ab
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "h"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ac

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "H"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ad

    :cond_ac
    const-string/jumbo v2, "\u2c68"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ad
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "j"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ae

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "J"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_af

    :cond_ae
    const-string/jumbo v2, "j"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_af
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "k"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b0

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "K"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    :cond_b0
    const-string/jumbo v2, "\u0199"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b1
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "l"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b2

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "L"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b3

    :cond_b2
    const-string/jumbo v2, "\u2c61"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b3
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "z"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b4

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "Z"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b5

    :cond_b4
    const-string/jumbo v2, "\u01b6"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b5
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b6

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "X"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b7

    :cond_b6
    const-string/jumbo v2, "\u00d7"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b7
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b8

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "C"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b9

    :cond_b8
    const-string/jumbo v2, "\u0188"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b9
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "v"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ba

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "V"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bb

    :cond_ba
    const-string/jumbo v2, "\u2c74"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_bb
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "b"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bc

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "B"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bd

    :cond_bc
    const-string/jumbo v2, "\u00fe"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_bd
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_be

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "N"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bf

    :cond_be
    const-string/jumbo v2, "\u019e"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_bf
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "m"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c0

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "M"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c1

    :cond_c0
    const-string/jumbo v2, "\u1e43"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c1
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0635"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c2

    const-string/jumbo v2, "\u0635"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c2
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c3

    const-string/jumbo v2, "?"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c3
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u061f"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c4

    const-string/jumbo v2, "\u061f"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c4
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c5

    const-string/jumbo v2, "."

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c5
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c6

    const-string/jumbo v2, "!"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c6
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c7

    const-string/jumbo v2, "@"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c7
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c8

    const-string/jumbo v2, "#"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c8
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c9

    const-string/jumbo v2, "$"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c9
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ca

    const-string/jumbo v2, "%"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ca
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "^"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cb

    const-string/jumbo v2, "^"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_cb
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cc

    const-string/jumbo v2, "&"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_cc
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cd

    const-string/jumbo v2, ")"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_cd
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ce

    const-string/jumbo v2, "("

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ce
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cf

    const-string/jumbo v2, "-"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_cf
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d0

    const-string/jumbo v2, "_"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d0
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d1

    const-string/jumbo v2, "="

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d1
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d2

    const-string/jumbo v2, "+"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d2
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d3

    const-string/jumbo v2, "-"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d3
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d4

    const-string/jumbo v2, "*"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d4
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d5

    const-string/jumbo v2, "/"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d5
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u060c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d6

    const-string/jumbo v2, "\u060c"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d6
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u2019"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d7

    const-string/jumbo v2, "\u2019"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d7
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d8

    const-string/jumbo v2, ":"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d8
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d9

    const-string/jumbo v2, "<"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d9
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_da

    const-string/jumbo v2, ">"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_da
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u061b"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_db

    const-string/jumbo v2, "\u061b"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_db
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u00a9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_dc

    const-string/jumbo v2, "\u00a9"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_dc
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_dd

    const-string/jumbo v2, "}"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_dd
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_de

    const-string/jumbo v2, "{"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_de
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_df

    const-string/jumbo v2, "["

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_df
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e0

    const-string/jumbo v2, "]"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e0
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u00ab"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e1

    const-string/jumbo v2, "\u00ab"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e1
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u00bb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e2

    const-string/jumbo v2, "\u00bb"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e2
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e3

    const-string/jumbo v2, "\u06f1"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e3
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e4

    const-string/jumbo v2, "\u06f2"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e4
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e5

    const-string/jumbo v2, "\u06f3"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e5
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e6

    const-string/jumbo v2, "\u06f4"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e6
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e7

    const-string/jumbo v2, "\u06f5"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e7
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f7"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e8

    const-string/jumbo v2, "\u06f7"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e8
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e9

    const-string/jumbo v2, "\u06f6"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e9
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ea

    const-string/jumbo v2, "\u06f8"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ea
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_eb

    const-string/jumbo v2, "\u06f9"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_eb
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ec

    const-string/jumbo v2, "\u06f0"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ec
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ed

    const-string/jumbo v2, "1"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ed
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ee

    const-string/jumbo v2, "2"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ee
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ef

    const-string/jumbo v2, "3"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ef
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f0

    const-string/jumbo v2, "4"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f0
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f1

    const-string/jumbo v2, "5"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f1
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f2

    const-string/jumbo v2, "6"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f2
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "7"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f3

    const-string/jumbo v2, "7"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f3
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f4

    const-string/jumbo v2, "8"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f4
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f5

    const-string/jumbo v2, "9"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f5
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f6

    const-string/jumbo v2, "0"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f6
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0622"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f7

    const-string/jumbo v2, "\u0622"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f7
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0627"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f8

    const-string/jumbo v2, "\u0627"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f8
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0623"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f9

    const-string/jumbo v2, "\u0623"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f9
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0625"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fa

    const-string/jumbo v2, "\u0625"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_fa
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0636"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fb

    const-string/jumbo v2, "\u06fb"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_fb
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062b"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fc

    const-string/jumbo v2, "\u062b"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_fc
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0630"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fd

    const-string/jumbo v2, "\u0630"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_fd
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0632"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fe

    const-string/jumbo v2, "\u0632"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_fe
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0698"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ff

    const-string/jumbo v2, "\u076b"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ff
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0642"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_100

    const-string/jumbo v2, "\u06a8"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_100
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0641"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_101

    const-string/jumbo v2, "\u06a6"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_101
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u063a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_102

    const-string/jumbo v2, "\u06a0"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_102
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0639"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_103

    const-string/jumbo v2, "\u0639"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_103
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062e"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_104

    const-string/jumbo v2, "\u0682"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_104
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_105

    const-string/jumbo v2, "\u0684"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_105
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0686"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_106

    const-string/jumbo v2, "\u0758"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_106
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062f"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_107

    const-string/jumbo v2, "\u062f"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_107
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0628"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_108

    const-string/jumbo v2, "\u0755"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_108
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0644"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_109

    const-string/jumbo v2, "\u06b6"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_109
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06cc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10a

    const-string/jumbo v2, "\u06cc"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10a
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0633"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10b

    const-string/jumbo v2, "\u076d"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10b
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06a9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10c

    const-string/jumbo v2, "\u06ad"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10c
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06af"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10d

    const-string/jumbo v2, "\u06b4"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10d
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u067e"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10e

    const-string/jumbo v2, "\u0680"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10e
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0631"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10f

    const-string/jumbo v2, "\u0696"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10f
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0648"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_110

    const-string/jumbo v2, "\u06cf"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_110
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0645"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_111

    const-string/jumbo v2, "\u0766"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_111
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_112

    const-string/jumbo v2, "\u0753"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_112
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0647"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_113

    const-string/jumbo v2, "\u0647"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_113
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0634"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_114

    const-string/jumbo v2, "\u06fa"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_114
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0646"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_115

    const-string/jumbo v2, "\u06ba"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_115
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0637"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_116

    const-string/jumbo v2, "\u0637"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_116
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062d"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_117

    const-string/jumbo v2, "\u0681"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_117
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0638"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_118

    const-string/jumbo v2, "\u0638"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_118
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8c

    const-string/jumbo v2, " "

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_119
    return-object p1
.end method

.method public Change_name2(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_11a

    aget-object v2, v1, v0

    iput-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x2

    if-ne v0, v2, :cond_8c

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "q"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "Q"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string/jumbo v2, "Q"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "w"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "W"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const-string/jumbo v2, "\u2c72"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "e"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "E"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    const-string/jumbo v2, "\u018e"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "r"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "R"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    const-string/jumbo v2, "\u0212"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "t"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "T"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    const-string/jumbo v2, "\u01ae"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "y"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "Y"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_a
    const-string/jumbo v2, "\u01b3"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "u"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "U"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_c
    const-string/jumbo v2, "\u01af"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "i"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "I"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_e
    const-string/jumbo v2, "\u0197"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "o"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "O"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_10
    const-string/jumbo v2, "\u019f"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "p"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "P"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_12
    const-string/jumbo v2, "\u1e56"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "A"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    :cond_14
    const-string/jumbo v2, "\u0104"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "S"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    :cond_16
    const-string/jumbo v2, "\u2c7e"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "d"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "D"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    :cond_18
    const-string/jumbo v2, "\u0189"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "f"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "F"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    :cond_1a
    const-string/jumbo v2, "\u0191"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "g"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "G"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    :cond_1c
    const-string/jumbo v2, "\u01e6"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "h"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "H"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    :cond_1e
    const-string/jumbo v2, "\u0126"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1f
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "j"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "J"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    :cond_20
    const-string/jumbo v2, "J"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "k"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "K"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    :cond_22
    const-string/jumbo v2, "\u2c69"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_23
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "l"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "L"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    :cond_24
    const-string/jumbo v2, "\u2c62"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "z"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "Z"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    :cond_26
    const-string/jumbo v2, "\u2c7f"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_27
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "X"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    :cond_28
    const-string/jumbo v2, "\u1e8a"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "C"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    :cond_2a
    const-string/jumbo v2, "\u0187"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2b
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "v"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "V"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    :cond_2c
    const-string/jumbo v2, "\u2c71"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2d
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "b"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "B"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    :cond_2e
    const-string/jumbo v2, "\u0181"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2f
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "N"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    :cond_30
    const-string/jumbo v2, "\u019d"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "m"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "M"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    :cond_32
    const-string/jumbo v2, "\u1e42"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_33
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    const-string/jumbo v2, "?"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_34
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0635"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    const-string/jumbo v2, "\u0635"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_35
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u061f"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    const-string/jumbo v2, "\u061f"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_36
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    const-string/jumbo v2, "."

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_37
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    const-string/jumbo v2, "!"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_38
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    const-string/jumbo v2, "@"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_39
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    const-string/jumbo v2, "#"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3a
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    const-string/jumbo v2, "$"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3b
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    const-string/jumbo v2, "%"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3c
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "^"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    const-string/jumbo v2, "^"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3d
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    const-string/jumbo v2, "&"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3e
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    const-string/jumbo v2, ")"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3f
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    const-string/jumbo v2, "("

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_40
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    const-string/jumbo v2, "-"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_41
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    const-string/jumbo v2, "_"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_42
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    const-string/jumbo v2, "="

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_43
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    const-string/jumbo v2, "+"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_44
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    const-string/jumbo v2, "-"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_45
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    const-string/jumbo v2, "*"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_46
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    const-string/jumbo v2, "/"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_47
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u060c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    const-string/jumbo v2, "\u060c"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_48
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u2019"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    const-string/jumbo v2, "\u2019"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_49
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    const-string/jumbo v2, ":"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4a
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    const-string/jumbo v2, "<"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4b
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    const-string/jumbo v2, ">"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4c
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u061b"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    const-string/jumbo v2, "\u061b"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4d
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u00a9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    const-string/jumbo v2, "\u00a9"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4e
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    const-string/jumbo v2, "}"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4f
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    const-string/jumbo v2, "{"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_50
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    const-string/jumbo v2, "["

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_51
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    const-string/jumbo v2, "]"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_52
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u00ab"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    const-string/jumbo v2, "\u00ab"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_53
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u00bb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    const-string/jumbo v2, "\u00bb"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_54
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    const-string/jumbo v2, "\u06f1"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_55
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    const-string/jumbo v2, "\u06f2"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_56
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    const-string/jumbo v2, "\u06f3"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_57
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    const-string/jumbo v2, "\u06f4"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_58
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    const-string/jumbo v2, "\u06f5"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_59
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f7"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    const-string/jumbo v2, "\u06f7"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5a
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    const-string/jumbo v2, "\u06f6"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5b
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    const-string/jumbo v2, "\u06f8"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5c
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    const-string/jumbo v2, "\u06f9"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5d
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    const-string/jumbo v2, "\u06f0"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5e
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    const-string/jumbo v2, "1"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5f
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    const-string/jumbo v2, "2"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_60
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    const-string/jumbo v2, "3"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_61
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    const-string/jumbo v2, "4"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_62
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    const-string/jumbo v2, "5"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_63
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    const-string/jumbo v2, "6"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_64
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "7"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    const-string/jumbo v2, "7"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_65
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    const-string/jumbo v2, "8"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_66
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    const-string/jumbo v2, "9"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_67
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    const-string/jumbo v2, "0"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_68
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0647"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    const-string/jumbo v2, "\u0640\u0640\ufba9"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_69
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06cc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    const-string/jumbo v2, "\u0640\u0640\u0640\u06d2\u0650\u0650"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6a
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0622"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    const-string/jumbo v2, "\u0622"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6b
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0627"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6c

    const-string/jumbo v2, "\u0627"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6c
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0623"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    const-string/jumbo v2, "\u0623"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6d
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0625"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    const-string/jumbo v2, "\u0625"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6e
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0636"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6f

    const-string/jumbo v2, "\u0636\u064b"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6f
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062b"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_70

    const-string/jumbo v2, "\u062b"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_70
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0630"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    const-string/jumbo v2, "\u0690"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_71
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0632"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    const-string/jumbo v2, "\u0632"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_72
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0698"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    const-string/jumbo v2, "\u0699"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_73
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0642"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    const-string/jumbo v2, "\u0642"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_74
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0641"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    const-string/jumbo v2, "\u06a4"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_75
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u063a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_76

    const-string/jumbo v2, "\u06fc"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_76
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0639"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_77

    const-string/jumbo v2, "\u0639"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_77
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062e"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_78

    const-string/jumbo v2, "\u0682"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_78
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_79

    const-string/jumbo v2, "\u062c"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_79
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0686"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7a

    const-string/jumbo v2, "\u06bf"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7a
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062f"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    const-string/jumbo v2, "\u062f"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7b
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0628"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    const-string/jumbo v2, "\u067b"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7c
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0644"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7d

    const-string/jumbo v2, "\u06b8"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7d
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0633"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    const-string/jumbo v2, "\u069b"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7e
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06a9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7f

    const-string/jumbo v2, "\u06ac"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7f
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06af"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    const-string/jumbo v2, "\u06b2"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_80
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u067e"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_81

    const-string/jumbo v2, "\u0752"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_81
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0631"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_82

    const-string/jumbo v2, "\u0631"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_82
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0648"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_83

    const-string/jumbo v2, "\u06cb"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_83
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0645"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_84

    const-string/jumbo v2, "\u0645"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_84
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_85

    const-string/jumbo v2, "\u062a"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_85
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0634"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_86

    const-string/jumbo v2, "\u075c\u064e"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_86
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0646"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_87

    const-string/jumbo v2, "\u06b9"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_87
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0637"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    const-string/jumbo v2, "\u0637"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_88
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062d"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_89

    const-string/jumbo v2, "\u062d"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_89
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0638"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    const-string/jumbo v2, "\u0638"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8a
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    const-string/jumbo v2, " "

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8b
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_8c
    array-length v2, v1

    if-gt v0, v2, :cond_8b

    aget-object v2, v1, v0

    iput-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "q"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8d

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "Q"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    :cond_8d
    const-string/jumbo v2, "Q"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8e
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "w"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8f

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "W"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_90

    :cond_8f
    const-string/jumbo v2, "\u2c72"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_90
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "e"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_91

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "E"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_92

    :cond_91
    const-string/jumbo v2, "\u018e"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_92
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "r"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_93

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "R"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_94

    :cond_93
    const-string/jumbo v2, "\u0212"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_94
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "t"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_95

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "T"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_96

    :cond_95
    const-string/jumbo v2, "\u01ae"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_96
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "y"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_97

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "Y"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_98

    :cond_97
    const-string/jumbo v2, "\u01b3"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_98
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "u"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_99

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "U"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9a

    :cond_99
    const-string/jumbo v2, "\u01af"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9a
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "i"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9b

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "I"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9c

    :cond_9b
    const-string/jumbo v2, "\u0197"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9c
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "o"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9d

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "O"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9e

    :cond_9d
    const-string/jumbo v2, "\u019f"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9e
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "p"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9f

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "P"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a0

    :cond_9f
    const-string/jumbo v2, "\u1e56"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a0
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a1

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "A"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a2

    :cond_a1
    const-string/jumbo v2, "\u0104"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a2
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a3

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "S"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a4

    :cond_a3
    const-string/jumbo v2, "\u2c7e"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a4
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "d"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a5

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "D"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a6

    :cond_a5
    const-string/jumbo v2, "\u0189"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a6
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "f"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a7

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "F"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    :cond_a7
    const-string/jumbo v2, "\u0191"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a8
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "g"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a9

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "G"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_aa

    :cond_a9
    const-string/jumbo v2, "\u01e6"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_aa
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "h"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ab

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "H"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ac

    :cond_ab
    const-string/jumbo v2, "\u0126"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ac
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "j"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ad

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "J"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ae

    :cond_ad
    const-string/jumbo v2, "J"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ae
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "k"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_af

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "K"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b0

    :cond_af
    const-string/jumbo v2, "\u2c69"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b0
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "l"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b1

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "L"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b2

    :cond_b1
    const-string/jumbo v2, "\u2c62"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b2
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "z"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b3

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "Z"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b4

    :cond_b3
    const-string/jumbo v2, "\u2c7f"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b4
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b5

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "X"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b6

    :cond_b5
    const-string/jumbo v2, "\u1e8a"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b6
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b7

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "C"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b8

    :cond_b7
    const-string/jumbo v2, "\u0187"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b8
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "v"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b9

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "V"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ba

    :cond_b9
    const-string/jumbo v2, "\u2c71"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ba
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "b"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bb

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "B"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bc

    :cond_bb
    const-string/jumbo v2, "\u0181"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_bc
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bd

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "N"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_be

    :cond_bd
    const-string/jumbo v2, "\u019d"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_be
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "m"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bf

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "M"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c0

    :cond_bf
    const-string/jumbo v2, "\u1e42"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c0
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c1

    const-string/jumbo v2, "?"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c1
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0635"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c2

    const-string/jumbo v2, "\u0635"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c2
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0635"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c3

    const-string/jumbo v2, "\u0635"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c3
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c4

    const-string/jumbo v2, "?"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c4
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u061f"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c5

    const-string/jumbo v2, "\u061f"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c5
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c6

    const-string/jumbo v2, "."

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c6
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c7

    const-string/jumbo v2, "!"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c7
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c8

    const-string/jumbo v2, "@"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c8
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c9

    const-string/jumbo v2, "#"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c9
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ca

    const-string/jumbo v2, "$"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ca
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cb

    const-string/jumbo v2, "%"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_cb
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "^"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cc

    const-string/jumbo v2, "^"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_cc
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cd

    const-string/jumbo v2, "&"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_cd
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ce

    const-string/jumbo v2, ")"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ce
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cf

    const-string/jumbo v2, "("

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_cf
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d0

    const-string/jumbo v2, "-"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d0
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d1

    const-string/jumbo v2, "_"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d1
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d2

    const-string/jumbo v2, "="

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d2
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d3

    const-string/jumbo v2, "+"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d3
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d4

    const-string/jumbo v2, "-"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d4
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d5

    const-string/jumbo v2, "*"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d5
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d6

    const-string/jumbo v2, "/"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d6
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u060c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d7

    const-string/jumbo v2, "\u060c"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d7
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u2019"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d8

    const-string/jumbo v2, "\u2019"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d8
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d9

    const-string/jumbo v2, ":"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d9
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_da

    const-string/jumbo v2, "<"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_da
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_db

    const-string/jumbo v2, ">"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_db
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u061b"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_dc

    const-string/jumbo v2, "\u061b"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_dc
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u00a9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_dd

    const-string/jumbo v2, "\u00a9"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_dd
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_de

    const-string/jumbo v2, "}"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_de
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_df

    const-string/jumbo v2, "{"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_df
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e0

    const-string/jumbo v2, "["

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e0
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e1

    const-string/jumbo v2, "]"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e1
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u00ab"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e2

    const-string/jumbo v2, "\u00ab"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e2
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u00bb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e3

    const-string/jumbo v2, "\u00bb"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e3
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e4

    const-string/jumbo v2, "\u06f1"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e4
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e5

    const-string/jumbo v2, "\u06f2"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e5
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e6

    const-string/jumbo v2, "\u06f3"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e6
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e7

    const-string/jumbo v2, "\u06f4"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e7
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e8

    const-string/jumbo v2, "\u06f5"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e8
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f7"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e9

    const-string/jumbo v2, "\u06f7"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e9
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ea

    const-string/jumbo v2, "\u06f6"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ea
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_eb

    const-string/jumbo v2, "\u06f8"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_eb
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ec

    const-string/jumbo v2, "\u06f9"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ec
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ed

    const-string/jumbo v2, "\u06f0"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ed
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ee

    const-string/jumbo v2, "1"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ee
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ef

    const-string/jumbo v2, "2"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ef
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f0

    const-string/jumbo v2, "3"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f0
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f1

    const-string/jumbo v2, "4"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f1
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f2

    const-string/jumbo v2, "5"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f2
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f3

    const-string/jumbo v2, "6"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f3
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "7"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f4

    const-string/jumbo v2, "7"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f4
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f5

    const-string/jumbo v2, "8"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f5
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f6

    const-string/jumbo v2, "9"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f6
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f7

    const-string/jumbo v2, "0"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f7
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0622"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f8

    const-string/jumbo v2, "\u0622"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f8
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0627"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f9

    const-string/jumbo v2, "\u0627"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f9
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0623"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fa

    const-string/jumbo v2, "\u0623"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_fa
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0625"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fb

    const-string/jumbo v2, "\u0625"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_fb
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0636"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fc

    const-string/jumbo v2, "\u0636\u064b"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_fc
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062b"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fd

    const-string/jumbo v2, "\u062b"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_fd
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0630"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fe

    const-string/jumbo v2, "\u0690"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_fe
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0632"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ff

    const-string/jumbo v2, "\u0632"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ff
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0698"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_100

    const-string/jumbo v2, "\u0699"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_100
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0642"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_101

    const-string/jumbo v2, "\u0642"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_101
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0641"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_102

    const-string/jumbo v2, "\u06a4"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_102
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u063a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_103

    const-string/jumbo v2, "\u06fc"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_103
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0639"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_104

    const-string/jumbo v2, "\u0639"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_104
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062e"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_105

    const-string/jumbo v2, "\u0682"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_105
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_106

    const-string/jumbo v2, "\u062c"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_106
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0686"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_107

    const-string/jumbo v2, "\u06bf"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_107
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062f"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_108

    const-string/jumbo v2, "\u062f"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_108
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0628"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_109

    const-string/jumbo v2, "\u067b"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_109
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0644"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10a

    const-string/jumbo v2, "\u06b8"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10a
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06cc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10b

    const-string/jumbo v2, "\u06cc"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10b
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0633"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10c

    const-string/jumbo v2, "\u069b"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10c
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06a9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10d

    const-string/jumbo v2, "\u06ac"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10d
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06af"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10e

    const-string/jumbo v2, "\u06b2"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10e
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u067e"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10f

    const-string/jumbo v2, "\u0752"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10f
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0631"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_110

    const-string/jumbo v2, "\u0631"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_110
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0648"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_111

    const-string/jumbo v2, "\u06cb"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_111
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0645"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_112

    const-string/jumbo v2, "\u0645"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_112
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_113

    const-string/jumbo v2, "\u062a"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_113
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0647"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_114

    const-string/jumbo v2, "\u0647"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_114
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0634"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_115

    const-string/jumbo v2, "\u075c\u064e"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_115
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0646"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_116

    const-string/jumbo v2, "\u06b9"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_116
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0637"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_117

    const-string/jumbo v2, "\u0637"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_117
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062d"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_118

    const-string/jumbo v2, "\u062d"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_118
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0638"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_119

    const-string/jumbo v2, "\u0638"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_119
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    const-string/jumbo v2, " "

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_11a
    return-object p1
.end method

.method public Change_name3(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_118

    aget-object v2, v1, v0

    iput-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x2

    if-ne v0, v2, :cond_8c

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "q"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "Q"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string/jumbo v2, "\u24c6"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "w"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "W"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const-string/jumbo v2, "\u24cc"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "e"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "E"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    const-string/jumbo v2, "\u24ba"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "r"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "R"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    const-string/jumbo v2, "\u24c7"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "t"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "T"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    const-string/jumbo v2, "\u24c9"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "y"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "Y"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_a
    const-string/jumbo v2, "\u24ce"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "u"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "U"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_c
    const-string/jumbo v2, "\u24ca"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "i"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "I"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_e
    const-string/jumbo v2, "\u24be"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "o"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "O"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_10
    const-string/jumbo v2, "\u24c4"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "p"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "P"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_12
    const-string/jumbo v2, "\u24c5"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "A"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    :cond_14
    const-string/jumbo v2, "\u24b6"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "S"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    :cond_16
    const-string/jumbo v2, "\u24c8"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "d"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "D"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    :cond_18
    const-string/jumbo v2, "\u24b9"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "f"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "F"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    :cond_1a
    const-string/jumbo v2, "\u24bb"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "g"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "G"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    :cond_1c
    const-string/jumbo v2, "\u24bc"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "h"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "H"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    :cond_1e
    const-string/jumbo v2, "\u24bd"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1f
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "j"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "J"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    :cond_20
    const-string/jumbo v2, "\u24bf"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "k"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "K"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    :cond_22
    const-string/jumbo v2, "\u24c0"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_23
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "l"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "L"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    :cond_24
    const-string/jumbo v2, "\u24c1"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "z"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "Z"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    :cond_26
    const-string/jumbo v2, "\u24cf"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_27
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "X"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    :cond_28
    const-string/jumbo v2, "\u24cd"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "C"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    :cond_2a
    const-string/jumbo v2, "\u24b8"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2b
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "v"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "V"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    :cond_2c
    const-string/jumbo v2, "\u24cb"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2d
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "b"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "B"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    :cond_2e
    const-string/jumbo v2, "\u24b7"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2f
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "N"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    :cond_30
    const-string/jumbo v2, "\u24c3"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "m"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "M"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    :cond_32
    const-string/jumbo v2, "\u24c2"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_33
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    const-string/jumbo v2, "?"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_34
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0635"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    const-string/jumbo v2, "\u0635"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_35
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u061f"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    const-string/jumbo v2, "\u061f"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_36
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    const-string/jumbo v2, "."

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_37
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    const-string/jumbo v2, "!"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_38
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    const-string/jumbo v2, "@"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_39
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    const-string/jumbo v2, "#"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3a
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    const-string/jumbo v2, "$"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3b
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    const-string/jumbo v2, "%"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3c
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "^"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    const-string/jumbo v2, "^"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3d
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    const-string/jumbo v2, "&"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3e
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    const-string/jumbo v2, ")"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3f
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    const-string/jumbo v2, "("

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_40
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    const-string/jumbo v2, "-"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_41
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    const-string/jumbo v2, "_"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_42
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    const-string/jumbo v2, "="

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_43
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    const-string/jumbo v2, "+"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_44
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    const-string/jumbo v2, "-"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_45
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    const-string/jumbo v2, "*"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_46
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    const-string/jumbo v2, "/"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_47
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u060c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    const-string/jumbo v2, "\u060c"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_48
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u2019"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    const-string/jumbo v2, "\u2019"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_49
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    const-string/jumbo v2, ":"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4a
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    const-string/jumbo v2, "<"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4b
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    const-string/jumbo v2, ">"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4c
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u061b"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    const-string/jumbo v2, "\u061b"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4d
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u00a9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    const-string/jumbo v2, "\u00a9"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4e
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    const-string/jumbo v2, "}"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4f
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    const-string/jumbo v2, "{"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_50
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    const-string/jumbo v2, "["

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_51
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    const-string/jumbo v2, "]"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_52
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u00ab"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    const-string/jumbo v2, "\u00ab"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_53
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u00bb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    const-string/jumbo v2, "\u00bb"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_54
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    const-string/jumbo v2, "\u06f1"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_55
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    const-string/jumbo v2, "\u06f2"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_56
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    const-string/jumbo v2, "\u06f3"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_57
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    const-string/jumbo v2, "\u06f4"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_58
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    const-string/jumbo v2, "\u06f5"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_59
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f7"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    const-string/jumbo v2, "\u06f7"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5a
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    const-string/jumbo v2, "\u06f6"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5b
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    const-string/jumbo v2, "\u06f8"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5c
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    const-string/jumbo v2, "\u06f9"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5d
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    const-string/jumbo v2, "\u06f0"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5e
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    const-string/jumbo v2, "1"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5f
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    const-string/jumbo v2, "2"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_60
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    const-string/jumbo v2, "3"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_61
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    const-string/jumbo v2, "4"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_62
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    const-string/jumbo v2, "5"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_63
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    const-string/jumbo v2, "6"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_64
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "7"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    const-string/jumbo v2, "7"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_65
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    const-string/jumbo v2, "8"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_66
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    const-string/jumbo v2, "9"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_67
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    const-string/jumbo v2, "0"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_68
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0622"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    const-string/jumbo v2, "\u0622"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_69
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0627"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    const-string/jumbo v2, "\u0627"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6a
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0623"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    const-string/jumbo v2, "\u0623"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6b
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0625"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6c

    const-string/jumbo v2, "\u0625"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6c
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0636"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    const-string/jumbo v2, "\u06fb"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6d
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062b"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    const-string/jumbo v2, "\u062b"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6e
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0630"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6f

    const-string/jumbo v2, "\u068e"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6f
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0632"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_70

    const-string/jumbo v2, "\u0632"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_70
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0698"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    const-string/jumbo v2, "\u0697"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_71
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0642"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    const-string/jumbo v2, "\u06a8"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_72
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0641"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    const-string/jumbo v2, "\u0641"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_73
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u063a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    const-string/jumbo v2, "\u075d"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_74
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0639"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    const-string/jumbo v2, "\u0639"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_75
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062e"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_76

    const-string/jumbo v2, "\u062e"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_76
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_77

    const-string/jumbo v2, "\u0683"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_77
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0686"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_78

    const-string/jumbo v2, "\u0685"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_78
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062f"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_79

    const-string/jumbo v2, "\u062f"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_79
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0628"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7a

    const-string/jumbo v2, "\u066e\u0651"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7a
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0644"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    const-string/jumbo v2, "\u06b7"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7b
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06cc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    const-string/jumbo v2, "\u0626"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7c
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0633"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7d

    const-string/jumbo v2, "\u069a\u064f"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7d
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06a9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    const-string/jumbo v2, "\u0763"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7e
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06af"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7f

    const-string/jumbo v2, "\u06b1"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7f
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u067e"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    const-string/jumbo v2, "\u0750"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_80
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0631"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_81

    const-string/jumbo v2, "\u0694"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_81
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0648"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_82

    const-string/jumbo v2, "\u06ca"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_82
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0645"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_83

    const-string/jumbo v2, "\u0765"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_83
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_84

    const-string/jumbo v2, "\u067c"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_84
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0647"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_85

    const-string/jumbo v2, "\u0647"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_85
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0634"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_86

    const-string/jumbo v2, "\u0634"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_86
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0646"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_87

    const-string/jumbo v2, "\u0769"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_87
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0637"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    const-string/jumbo v2, "\u0637"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_88
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062d"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_89

    const-string/jumbo v2, "\u0681"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_89
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0638"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    const-string/jumbo v2, "\u0638"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8a
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    const-string/jumbo v2, " "

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8b
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_8c
    array-length v2, v1

    if-gt v0, v2, :cond_8b

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "q"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8d

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "Q"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    :cond_8d
    const-string/jumbo v2, "\u24c6"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8e
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "w"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8f

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "W"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_90

    :cond_8f
    const-string/jumbo v2, "\u24cc"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_90
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "e"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_91

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "E"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_92

    :cond_91
    const-string/jumbo v2, "\u24ba"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_92
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "r"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_93

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "R"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_94

    :cond_93
    const-string/jumbo v2, "\u24c7"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_94
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "t"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_95

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "T"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_96

    :cond_95
    const-string/jumbo v2, "\u24c9"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_96
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "y"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_97

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "Y"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_98

    :cond_97
    const-string/jumbo v2, "\u24ce"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_98
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "u"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_99

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "U"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9a

    :cond_99
    const-string/jumbo v2, "\u24ca"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9a
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "i"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9b

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "I"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9c

    :cond_9b
    const-string/jumbo v2, "\u24be"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9c
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "o"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9d

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "O"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9e

    :cond_9d
    const-string/jumbo v2, "\u24c4"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9e
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "p"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9f

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "P"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a0

    :cond_9f
    const-string/jumbo v2, "\u24c5"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a0
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a1

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "A"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a2

    :cond_a1
    const-string/jumbo v2, "\u24b6"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a2
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a3

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "S"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a4

    :cond_a3
    const-string/jumbo v2, "\u24c8"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a4
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "d"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a5

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "D"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a6

    :cond_a5
    const-string/jumbo v2, "\u24b9"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a6
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "f"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a7

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "F"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    :cond_a7
    const-string/jumbo v2, "\u24bb"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a8
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "g"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a9

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "G"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_aa

    :cond_a9
    const-string/jumbo v2, "\u24bc"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_aa
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "h"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ab

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "H"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ac

    :cond_ab
    const-string/jumbo v2, "\u24bd"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ac
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "j"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ad

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "J"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ae

    :cond_ad
    const-string/jumbo v2, "\u24bf"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ae
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "k"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_af

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "K"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b0

    :cond_af
    const-string/jumbo v2, "\u24c0"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b0
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "l"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b1

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "L"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b2

    :cond_b1
    const-string/jumbo v2, "\u24c1"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b2
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "z"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b3

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "Z"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b4

    :cond_b3
    const-string/jumbo v2, "\u24cf"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b4
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b5

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "X"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b6

    :cond_b5
    const-string/jumbo v2, "\u24cd"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b6
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b7

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "C"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b8

    :cond_b7
    const-string/jumbo v2, "\u24b8"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b8
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "v"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b9

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "V"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ba

    :cond_b9
    const-string/jumbo v2, "\u24cb"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ba
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "b"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bb

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "B"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bc

    :cond_bb
    const-string/jumbo v2, "\u24b7"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_bc
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bd

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "N"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_be

    :cond_bd
    const-string/jumbo v2, "\u24c3"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_be
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "m"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bf

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "M"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c0

    :cond_bf
    const-string/jumbo v2, "\u24c2"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c0
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c1

    const-string/jumbo v2, "?"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c1
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u061f"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c2

    const-string/jumbo v2, "\u061f"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c2
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0635"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c3

    const-string/jumbo v2, "\u0635"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c3
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c4

    const-string/jumbo v2, "."

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c4
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c5

    const-string/jumbo v2, "!"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c5
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c6

    const-string/jumbo v2, "@"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c6
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c7

    const-string/jumbo v2, "#"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c7
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c8

    const-string/jumbo v2, "$"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c8
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c9

    const-string/jumbo v2, "%"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c9
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "^"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ca

    const-string/jumbo v2, "^"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ca
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cb

    const-string/jumbo v2, "&"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_cb
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cc

    const-string/jumbo v2, ")"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_cc
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cd

    const-string/jumbo v2, "("

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_cd
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ce

    const-string/jumbo v2, "-"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ce
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cf

    const-string/jumbo v2, "_"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_cf
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d0

    const-string/jumbo v2, "="

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d0
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d1

    const-string/jumbo v2, "+"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d1
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d2

    const-string/jumbo v2, "-"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d2
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d3

    const-string/jumbo v2, "*"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d3
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d4

    const-string/jumbo v2, "/"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d4
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u060c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d5

    const-string/jumbo v2, "\u060c"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d5
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u2019"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d6

    const-string/jumbo v2, "\u2019"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d6
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d7

    const-string/jumbo v2, ":"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d7
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d8

    const-string/jumbo v2, "<"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d8
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d9

    const-string/jumbo v2, ">"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d9
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u061b"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_da

    const-string/jumbo v2, "\u061b"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_da
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u00a9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_db

    const-string/jumbo v2, "\u00a9"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_db
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_dc

    const-string/jumbo v2, "}"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_dc
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_dd

    const-string/jumbo v2, "{"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_dd
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_de

    const-string/jumbo v2, "["

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_de
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_df

    const-string/jumbo v2, "]"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_df
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u00ab"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e0

    const-string/jumbo v2, "\u00ab"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e0
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u00bb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e1

    const-string/jumbo v2, "\u00bb"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e1
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e2

    const-string/jumbo v2, "\u06f1"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e2
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e3

    const-string/jumbo v2, "\u06f2"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e3
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e4

    const-string/jumbo v2, "\u06f3"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e4
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e5

    const-string/jumbo v2, "\u06f4"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e5
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e6

    const-string/jumbo v2, "\u06f5"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e6
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f7"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e7

    const-string/jumbo v2, "\u06f7"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e7
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e8

    const-string/jumbo v2, "\u06f6"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e8
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e9

    const-string/jumbo v2, "\u06f8"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e9
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ea

    const-string/jumbo v2, "\u06f9"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ea
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_eb

    const-string/jumbo v2, "\u06f0"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_eb
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ec

    const-string/jumbo v2, "1"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ec
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ed

    const-string/jumbo v2, "2"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ed
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ee

    const-string/jumbo v2, "3"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ee
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ef

    const-string/jumbo v2, "4"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ef
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f0

    const-string/jumbo v2, "5"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f0
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f1

    const-string/jumbo v2, "6"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f1
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "7"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f2

    const-string/jumbo v2, "7"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f2
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f3

    const-string/jumbo v2, "8"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f3
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f4

    const-string/jumbo v2, "9"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f4
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f5

    const-string/jumbo v2, "0"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f5
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0622"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f6

    const-string/jumbo v2, "\u0622"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f6
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0627"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f7

    const-string/jumbo v2, "\u0627"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f7
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0623"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f8

    const-string/jumbo v2, "\u0623"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f8
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0625"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f9

    const-string/jumbo v2, "\u0625"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f9
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0636"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fa

    const-string/jumbo v2, "\u06fb"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_fa
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062b"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fb

    const-string/jumbo v2, "\u062b"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_fb
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0630"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fc

    const-string/jumbo v2, "\u068e"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_fc
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0632"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fd

    const-string/jumbo v2, "\u0632"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_fd
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0698"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fe

    const-string/jumbo v2, "\u0697"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_fe
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0642"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ff

    const-string/jumbo v2, "\u06a8"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ff
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0641"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_100

    const-string/jumbo v2, "\u0641"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_100
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u063a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_101

    const-string/jumbo v2, "\u075d"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_101
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0639"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_102

    const-string/jumbo v2, "\u0639"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_102
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062e"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_103

    const-string/jumbo v2, "\u062e"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_103
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_104

    const-string/jumbo v2, "\u0683"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_104
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0686"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_105

    const-string/jumbo v2, "\u0685"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_105
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062f"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_106

    const-string/jumbo v2, "\u062f"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_106
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0628"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_107

    const-string/jumbo v2, "\u066e\u0651"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_107
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0644"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_108

    const-string/jumbo v2, "\u06b7"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_108
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06cc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_109

    const-string/jumbo v2, "\u0626"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_109
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0633"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10a

    const-string/jumbo v2, "\u069a\u064f"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10a
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06a9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10b

    const-string/jumbo v2, "\u0763"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10b
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06af"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10c

    const-string/jumbo v2, "\u06b1"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10c
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u067e"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10d

    const-string/jumbo v2, "\u0750"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10d
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0631"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10e

    const-string/jumbo v2, "\u0694"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10e
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0648"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10f

    const-string/jumbo v2, "\u06ca"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10f
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0645"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_110

    const-string/jumbo v2, "\u0765"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_110
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_111

    const-string/jumbo v2, "\u067c"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_111
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0647"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_112

    const-string/jumbo v2, "\u0647"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_112
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0634"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_113

    const-string/jumbo v2, "\u0634"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_113
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0646"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_114

    const-string/jumbo v2, "\u0769"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_114
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0637"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_115

    const-string/jumbo v2, "\u0637"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_115
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062d"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_116

    const-string/jumbo v2, "\u0681"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_116
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0638"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_117

    const-string/jumbo v2, "\u0638"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_117
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    const-string/jumbo v2, " "

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_118
    return-object p1
.end method

.method public Change_name4(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_118

    aget-object v2, v1, v0

    iput-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x2

    if-ne v0, v2, :cond_8c

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "q"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "Q"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string/jumbo v2, "\u24e0"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "w"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "W"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const-string/jumbo v2, "\u24e6"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "e"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "E"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    const-string/jumbo v2, "\u24d4"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "r"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "R"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    const-string/jumbo v2, "\u24e1"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "t"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "T"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    const-string/jumbo v2, "\u24e3"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "y"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "Y"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_a
    const-string/jumbo v2, "\u24e8"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "u"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "U"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_c
    const-string/jumbo v2, "\u24e4"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "i"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "I"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_e
    const-string/jumbo v2, "\u24d8"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "o"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "O"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_10
    const-string/jumbo v2, "\u24de"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "p"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "P"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_12
    const-string/jumbo v2, "\u24df"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "A"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    :cond_14
    const-string/jumbo v2, "\u24d0"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "S"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    :cond_16
    const-string/jumbo v2, "\u24e2"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "d"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "D"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    :cond_18
    const-string/jumbo v2, "\u24d3"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "f"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "F"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    :cond_1a
    const-string/jumbo v2, "\u24d5"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "g"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "G"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    :cond_1c
    const-string/jumbo v2, "\u24d6"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "h"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "H"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    :cond_1e
    const-string/jumbo v2, "\u24d7"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1f
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "j"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "J"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    :cond_20
    const-string/jumbo v2, "\u24d9"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "k"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "K"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    :cond_22
    const-string/jumbo v2, "\u24da"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_23
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "l"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "L"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    :cond_24
    const-string/jumbo v2, "\u24db"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "z"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "Z"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    :cond_26
    const-string/jumbo v2, "\u24e9"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_27
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "X"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    :cond_28
    const-string/jumbo v2, "\u24e7"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "C"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    :cond_2a
    const-string/jumbo v2, "\u24d2"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2b
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "v"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "V"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    :cond_2c
    const-string/jumbo v2, "\u24e5"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2d
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "b"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "B"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    :cond_2e
    const-string/jumbo v2, "\u24d1"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2f
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "N"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    :cond_30
    const-string/jumbo v2, "\u24dd"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "m"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "M"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    :cond_32
    const-string/jumbo v2, "\u24dc"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_33
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    const-string/jumbo v2, "?"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_34
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0635"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    const-string/jumbo v2, "\u0635"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_35
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u061f"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    const-string/jumbo v2, "\u061f"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_36
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    const-string/jumbo v2, "."

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_37
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    const-string/jumbo v2, "!"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_38
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    const-string/jumbo v2, "@"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_39
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    const-string/jumbo v2, "#"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3a
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    const-string/jumbo v2, "$"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3b
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    const-string/jumbo v2, "%"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3c
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "^"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    const-string/jumbo v2, "^"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3d
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    const-string/jumbo v2, "&"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3e
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    const-string/jumbo v2, ")"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3f
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    const-string/jumbo v2, "("

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_40
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    const-string/jumbo v2, "-"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_41
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    const-string/jumbo v2, "_"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_42
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    const-string/jumbo v2, "="

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_43
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    const-string/jumbo v2, "+"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_44
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    const-string/jumbo v2, "-"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_45
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    const-string/jumbo v2, "*"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_46
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    const-string/jumbo v2, "/"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_47
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u060c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    const-string/jumbo v2, "\u060c"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_48
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u2019"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    const-string/jumbo v2, "\u2019"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_49
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    const-string/jumbo v2, ":"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4a
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    const-string/jumbo v2, "<"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4b
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    const-string/jumbo v2, ">"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4c
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u061b"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    const-string/jumbo v2, "\u061b"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4d
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u00a9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    const-string/jumbo v2, "\u00a9"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4e
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    const-string/jumbo v2, "}"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4f
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    const-string/jumbo v2, "{"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_50
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    const-string/jumbo v2, "["

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_51
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    const-string/jumbo v2, "]"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_52
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u00ab"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    const-string/jumbo v2, "\u00ab"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_53
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u00bb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    const-string/jumbo v2, "\u00bb"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_54
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    const-string/jumbo v2, "\u06f1"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_55
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    const-string/jumbo v2, "\u06f2"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_56
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    const-string/jumbo v2, "\u06f3"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_57
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    const-string/jumbo v2, "\u06f4"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_58
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    const-string/jumbo v2, "\u06f5"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_59
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f7"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    const-string/jumbo v2, "\u06f7"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5a
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    const-string/jumbo v2, "\u06f6"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5b
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    const-string/jumbo v2, "\u06f8"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5c
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    const-string/jumbo v2, "\u06f9"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5d
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    const-string/jumbo v2, "\u06f0"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5e
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    const-string/jumbo v2, "1"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5f
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    const-string/jumbo v2, "2"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_60
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    const-string/jumbo v2, "3"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_61
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    const-string/jumbo v2, "4"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_62
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    const-string/jumbo v2, "5"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_63
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    const-string/jumbo v2, "6"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_64
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "7"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    const-string/jumbo v2, "7"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_65
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    const-string/jumbo v2, "8"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_66
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    const-string/jumbo v2, "9"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_67
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    const-string/jumbo v2, "0"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_68
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0647"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    const-string/jumbo v2, "\u0640\u0640\ufba9"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_69
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0622"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    const-string/jumbo v2, "\u0622"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6a
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0627"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    const-string/jumbo v2, "\u0627"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6b
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0623"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6c

    const-string/jumbo v2, "\u0623"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6c
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0625"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    const-string/jumbo v2, "\u0625"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6d
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0636"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    const-string/jumbo v2, "\u0636\u064b"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6e
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062b"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6f

    const-string/jumbo v2, "\u062b"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6f
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0630"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_70

    const-string/jumbo v2, "\u068c"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_70
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0632"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    const-string/jumbo v2, "\u0632"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_71
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0698"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    const-string/jumbo v2, "\u0698"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_72
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0642"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    const-string/jumbo v2, "\u06a8"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_73
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0641"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    const-string/jumbo v2, "\u06a3"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_74
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u063a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    const-string/jumbo v2, "\u075f"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_75
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0639"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_76

    const-string/jumbo v2, "\u0639"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_76
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062e"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_77

    const-string/jumbo v2, "\u0682"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_77
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_78

    const-string/jumbo v2, "\u062c"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_78
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0686"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_79

    const-string/jumbo v2, "\u0687"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_79
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062f"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7a

    const-string/jumbo v2, "\u062f"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7a
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0628"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    const-string/jumbo v2, "\u0628"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7b
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0644"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    const-string/jumbo v2, "\u076a"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7c
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06cc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7d

    const-string/jumbo v2, "\u06cc"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7d
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0633"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    const-string/jumbo v2, "\u076d"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7e
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06a9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7f

    const-string/jumbo v2, "\u06aa"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7f
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06af"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    const-string/jumbo v2, "\u06b4"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_80
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u067e"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_81

    const-string/jumbo v2, "\u067e"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_81
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0631"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_82

    const-string/jumbo v2, "\u0696"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_82
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0648"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_83

    const-string/jumbo v2, "\u06c5"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_83
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0645"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_84

    const-string/jumbo v2, "\u0645"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_84
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_85

    const-string/jumbo v2, "\u067a"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_85
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0634"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_86

    const-string/jumbo v2, "\u06fa"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_86
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0646"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_87

    const-string/jumbo v2, "\u0767"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_87
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0637"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    const-string/jumbo v2, "\u0637"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_88
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062d"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_89

    const-string/jumbo v2, "\u062d"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_89
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0638"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    const-string/jumbo v2, "\u0638"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8a
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    const-string/jumbo v2, " "

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8b
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_8c
    array-length v2, v1

    if-gt v0, v2, :cond_8b

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "q"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8d

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "Q"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    :cond_8d
    const-string/jumbo v2, "\u24e0"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8e
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "w"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8f

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "W"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_90

    :cond_8f
    const-string/jumbo v2, "\u24e6"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_90
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "e"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_91

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "E"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_92

    :cond_91
    const-string/jumbo v2, "\u24d4"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_92
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "r"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_93

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "R"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_94

    :cond_93
    const-string/jumbo v2, "\u24e1"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_94
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "t"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_95

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "T"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_96

    :cond_95
    const-string/jumbo v2, "\u24e3"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_96
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "y"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_97

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "Y"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_98

    :cond_97
    const-string/jumbo v2, "\u24e8"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_98
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "u"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_99

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "U"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9a

    :cond_99
    const-string/jumbo v2, "\u24e4"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9a
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "i"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9b

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "I"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9c

    :cond_9b
    const-string/jumbo v2, "\u24d8"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9c
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "o"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9d

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "O"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9e

    :cond_9d
    const-string/jumbo v2, "\u24de"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9e
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "p"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9f

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "P"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a0

    :cond_9f
    const-string/jumbo v2, "\u24df"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a0
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a1

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "A"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a2

    :cond_a1
    const-string/jumbo v2, "\u24d0"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a2
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a3

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "S"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a4

    :cond_a3
    const-string/jumbo v2, "\u24e2"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a4
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "d"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a5

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "D"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a6

    :cond_a5
    const-string/jumbo v2, "\u24d3"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a6
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "f"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a7

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "F"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    :cond_a7
    const-string/jumbo v2, "\u24d5"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a8
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "g"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a9

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "G"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_aa

    :cond_a9
    const-string/jumbo v2, "\u24d6"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_aa
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "h"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ab

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "H"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ac

    :cond_ab
    const-string/jumbo v2, "\u24d7"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ac
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "j"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ad

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "J"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ae

    :cond_ad
    const-string/jumbo v2, "\u24d9"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ae
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "k"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_af

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "K"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b0

    :cond_af
    const-string/jumbo v2, "\u24da"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b0
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "l"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b1

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "L"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b2

    :cond_b1
    const-string/jumbo v2, "\u24db"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b2
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "z"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b3

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "Z"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b4

    :cond_b3
    const-string/jumbo v2, "\u24e9"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b4
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b5

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "X"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b6

    :cond_b5
    const-string/jumbo v2, "\u24e7"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b6
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b7

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "C"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b8

    :cond_b7
    const-string/jumbo v2, "\u24d2"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b8
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "v"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b9

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "V"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ba

    :cond_b9
    const-string/jumbo v2, "\u24e5"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ba
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "b"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bb

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "B"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bc

    :cond_bb
    const-string/jumbo v2, "\u24d1"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_bc
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bd

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "N"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_be

    :cond_bd
    const-string/jumbo v2, "\u24dd"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_be
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "m"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bf

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "M"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c0

    :cond_bf
    const-string/jumbo v2, "\u24dc"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c0
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c1

    const-string/jumbo v2, "?"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c1
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u061f"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c2

    const-string/jumbo v2, "\u061f"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c2
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0635"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c3

    const-string/jumbo v2, "\u0635"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c3
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c4

    const-string/jumbo v2, "."

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c4
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c5

    const-string/jumbo v2, "!"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c5
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c6

    const-string/jumbo v2, "@"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c6
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c7

    const-string/jumbo v2, "#"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c7
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c8

    const-string/jumbo v2, "$"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c8
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c9

    const-string/jumbo v2, "%"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c9
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "^"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ca

    const-string/jumbo v2, "^"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ca
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cb

    const-string/jumbo v2, "&"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_cb
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cc

    const-string/jumbo v2, ")"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_cc
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cd

    const-string/jumbo v2, "("

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_cd
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ce

    const-string/jumbo v2, "-"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ce
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cf

    const-string/jumbo v2, "_"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_cf
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d0

    const-string/jumbo v2, "="

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d0
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d1

    const-string/jumbo v2, "+"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d1
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d2

    const-string/jumbo v2, "-"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d2
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d3

    const-string/jumbo v2, "*"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d3
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d4

    const-string/jumbo v2, "/"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d4
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u060c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d5

    const-string/jumbo v2, "\u060c"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d5
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u2019"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d6

    const-string/jumbo v2, "\u2019"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d6
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d7

    const-string/jumbo v2, ":"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d7
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d8

    const-string/jumbo v2, "<"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d8
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d9

    const-string/jumbo v2, ">"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d9
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u061b"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_da

    const-string/jumbo v2, "\u061b"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_da
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u00a9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_db

    const-string/jumbo v2, "\u00a9"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_db
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_dc

    const-string/jumbo v2, "}"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_dc
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_dd

    const-string/jumbo v2, "{"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_dd
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_de

    const-string/jumbo v2, "["

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_de
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_df

    const-string/jumbo v2, "]"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_df
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u00ab"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e0

    const-string/jumbo v2, "\u00ab"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e0
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u00bb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e1

    const-string/jumbo v2, "\u00bb"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e1
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e2

    const-string/jumbo v2, "\u06f1"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e2
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e3

    const-string/jumbo v2, "\u06f2"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e3
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e4

    const-string/jumbo v2, "\u06f3"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e4
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e5

    const-string/jumbo v2, "\u06f4"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e5
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e6

    const-string/jumbo v2, "\u06f5"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e6
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f7"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e7

    const-string/jumbo v2, "\u06f7"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e7
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e8

    const-string/jumbo v2, "\u06f6"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e8
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e9

    const-string/jumbo v2, "\u06f8"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e9
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ea

    const-string/jumbo v2, "\u06f9"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ea
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_eb

    const-string/jumbo v2, "\u06f0"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_eb
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ec

    const-string/jumbo v2, "1"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ec
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ed

    const-string/jumbo v2, "2"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ed
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ee

    const-string/jumbo v2, "3"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ee
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ef

    const-string/jumbo v2, "4"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ef
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f0

    const-string/jumbo v2, "5"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f0
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f1

    const-string/jumbo v2, "6"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f1
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "7"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f2

    const-string/jumbo v2, "7"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f2
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f3

    const-string/jumbo v2, "8"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f3
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f4

    const-string/jumbo v2, "9"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f4
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f5

    const-string/jumbo v2, "0"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f5
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0622"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f6

    const-string/jumbo v2, "\u0622"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f6
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0627"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f7

    const-string/jumbo v2, "\u0627"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f7
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0623"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f8

    const-string/jumbo v2, "\u0623"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f8
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0625"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f9

    const-string/jumbo v2, "\u0625"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f9
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0636"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fa

    const-string/jumbo v2, "\u0636\u064b"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_fa
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062b"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fb

    const-string/jumbo v2, "\u062b"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_fb
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0630"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fc

    const-string/jumbo v2, "\u068c"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_fc
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0632"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fd

    const-string/jumbo v2, "\u0632"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_fd
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0698"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fe

    const-string/jumbo v2, "\u0698"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_fe
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0642"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ff

    const-string/jumbo v2, "\u06a8"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ff
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0641"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_100

    const-string/jumbo v2, "\u06a3"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_100
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u063a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_101

    const-string/jumbo v2, "\u075f"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_101
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0639"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_102

    const-string/jumbo v2, "\u0639"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_102
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062e"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_103

    const-string/jumbo v2, "\u0682"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_103
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_104

    const-string/jumbo v2, "\u062c"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_104
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0686"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_105

    const-string/jumbo v2, "\u0687"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_105
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062f"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_106

    const-string/jumbo v2, "\u062f"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_106
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0628"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_107

    const-string/jumbo v2, "\u0628"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_107
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0644"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_108

    const-string/jumbo v2, "\u076a"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_108
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06cc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_109

    const-string/jumbo v2, "\u06cc"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_109
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0633"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10a

    const-string/jumbo v2, "\u076d"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10a
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06a9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10b

    const-string/jumbo v2, "\u06aa"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10b
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06af"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10c

    const-string/jumbo v2, "\u06b4"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10c
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u067e"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10d

    const-string/jumbo v2, "\u067e"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10d
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0631"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10e

    const-string/jumbo v2, "\u0696"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10e
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0648"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10f

    const-string/jumbo v2, "\u06c5"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10f
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0645"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_110

    const-string/jumbo v2, "\u0645"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_110
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_111

    const-string/jumbo v2, "\u067a"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_111
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0647"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_112

    const-string/jumbo v2, "\u0647"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_112
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0634"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_113

    const-string/jumbo v2, "\u06fa"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_113
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0646"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_114

    const-string/jumbo v2, "\u0767"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_114
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0637"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_115

    const-string/jumbo v2, "\u0637"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_115
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062d"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_116

    const-string/jumbo v2, "\u062d"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_116
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0638"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_117

    const-string/jumbo v2, "\u0638"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_117
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    const-string/jumbo v2, " "

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_118
    return-object p1
.end method

.method public Change_name5(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_118

    aget-object v2, v1, v0

    iput-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x2

    if-ne v0, v2, :cond_8c

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "q"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "Q"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string/jumbo v2, "q"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "w"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "W"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const-string/jumbo v2, "\u1e85"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "e"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "E"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    const-string/jumbo v2, "\u1e19"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "r"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "R"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    const-string/jumbo v2, "\u1e5d"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "t"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "T"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    const-string/jumbo v2, "\u1e6b"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "y"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "Y"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_a
    const-string/jumbo v2, "\u1e8f"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "u"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "U"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_c
    const-string/jumbo v2, "\u1e79"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "i"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "I"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_e
    const-string/jumbo v2, "\u1e2f"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "o"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "O"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_10
    const-string/jumbo v2, "\u1e53"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "p"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "P"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_12
    const-string/jumbo v2, "\u1e55"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "A"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    :cond_14
    const-string/jumbo v2, "\u1e01"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "S"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    :cond_16
    const-string/jumbo v2, "\u1e67"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "d"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "D"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    :cond_18
    const-string/jumbo v2, "\u1e13"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "f"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "F"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    :cond_1a
    const-string/jumbo v2, "\u1e1f"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "g"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "G"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    :cond_1c
    const-string/jumbo v2, "\u1e21"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "h"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "H"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    :cond_1e
    const-string/jumbo v2, "\u1e27"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1f
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "j"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "J"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    :cond_20
    const-string/jumbo v2, "\u0135"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "k"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "K"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    :cond_22
    const-string/jumbo v2, "\u1e33"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_23
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "l"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "L"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    :cond_24
    const-string/jumbo v2, "\u1e3b"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "z"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "Z"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    :cond_26
    const-string/jumbo v2, "\u1e91"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_27
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "X"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    :cond_28
    const-string/jumbo v2, "\u1e8b"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "C"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    :cond_2a
    const-string/jumbo v2, "\u1e09"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2b
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "v"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "V"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    :cond_2c
    const-string/jumbo v2, "\u1e7f"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2d
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "b"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "B"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    :cond_2e
    const-string/jumbo v2, "\u1e05"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2f
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "N"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    :cond_30
    const-string/jumbo v2, "\u1e45"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "m"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "M"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    :cond_32
    const-string/jumbo v2, "\u1e43"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_33
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    const-string/jumbo v2, "?"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_34
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u061f"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    const-string/jumbo v2, "\u061f"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_35
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0635"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    const-string/jumbo v2, "\u0635"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_36
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    const-string/jumbo v2, "."

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_37
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    const-string/jumbo v2, "!"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_38
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    const-string/jumbo v2, "@"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_39
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    const-string/jumbo v2, "#"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3a
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    const-string/jumbo v2, "$"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3b
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    const-string/jumbo v2, "%"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3c
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "^"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    const-string/jumbo v2, "^"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3d
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    const-string/jumbo v2, "&"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3e
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    const-string/jumbo v2, ")"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3f
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    const-string/jumbo v2, "("

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_40
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    const-string/jumbo v2, "-"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_41
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    const-string/jumbo v2, "_"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_42
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    const-string/jumbo v2, "="

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_43
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    const-string/jumbo v2, "+"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_44
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    const-string/jumbo v2, "-"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_45
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    const-string/jumbo v2, "*"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_46
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    const-string/jumbo v2, "/"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_47
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u060c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    const-string/jumbo v2, "\u060c"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_48
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u2019"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    const-string/jumbo v2, "\u2019"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_49
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    const-string/jumbo v2, ":"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4a
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    const-string/jumbo v2, "<"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4b
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    const-string/jumbo v2, ">"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4c
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u061b"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    const-string/jumbo v2, "\u061b"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4d
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u00a9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    const-string/jumbo v2, "\u00a9"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4e
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    const-string/jumbo v2, "}"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4f
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    const-string/jumbo v2, "{"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_50
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    const-string/jumbo v2, "["

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_51
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    const-string/jumbo v2, "]"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_52
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u00ab"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    const-string/jumbo v2, "\u00ab"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_53
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u00bb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    const-string/jumbo v2, "\u00bb"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_54
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    const-string/jumbo v2, "\u06f1"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_55
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    const-string/jumbo v2, "\u06f2"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_56
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    const-string/jumbo v2, "\u06f3"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_57
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    const-string/jumbo v2, "\u06f4"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_58
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    const-string/jumbo v2, "\u06f5"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_59
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f7"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    const-string/jumbo v2, "\u06f7"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5a
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    const-string/jumbo v2, "\u06f6"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5b
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    const-string/jumbo v2, "\u06f8"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5c
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    const-string/jumbo v2, "\u06f9"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5d
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    const-string/jumbo v2, "\u06f0"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5e
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    const-string/jumbo v2, "1"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5f
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    const-string/jumbo v2, "2"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_60
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    const-string/jumbo v2, "3"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_61
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    const-string/jumbo v2, "4"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_62
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    const-string/jumbo v2, "5"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_63
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    const-string/jumbo v2, "6"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_64
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "7"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    const-string/jumbo v2, "7"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_65
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    const-string/jumbo v2, "8"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_66
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    const-string/jumbo v2, "9"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_67
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    const-string/jumbo v2, "0"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_68
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0647"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    const-string/jumbo v2, "\u0640\u0640\ufba9"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_69
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0622"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    const-string/jumbo v2, "\u0622"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6a
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0627"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    const-string/jumbo v2, "\u0627"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6b
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0623"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6c

    const-string/jumbo v2, "\u0623"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6c
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0625"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    const-string/jumbo v2, "\u0625"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6d
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0636"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    const-string/jumbo v2, "\u06fb"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6e
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0630"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6f

    const-string/jumbo v2, "\u068b"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6f
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0632"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_70

    const-string/jumbo v2, "\u0632"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_70
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0698"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    const-string/jumbo v2, "\u0699"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_71
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0642"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    const-string/jumbo v2, "\u0642"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_72
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0641"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    const-string/jumbo v2, "\u06a2"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_73
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u063a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    const-string/jumbo v2, "\u063a"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_74
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0639"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    const-string/jumbo v2, "\u0639"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_75
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062e"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_76

    const-string/jumbo v2, "\u062e"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_76
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_77

    const-string/jumbo v2, "\u0684"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_77
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0686"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_78

    const-string/jumbo v2, "\u0686"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_78
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062f"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_79

    const-string/jumbo v2, "\u062f"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_79
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0628"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7a

    const-string/jumbo v2, "\u066e\u0651"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7a
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0644"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    const-string/jumbo v2, "\u0644"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7b
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06cc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    const-string/jumbo v2, "\u06cc"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7c
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0633"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7d

    const-string/jumbo v2, "\u069b"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7d
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06a9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    const-string/jumbo v2, "\u06a9"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7e
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06af"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7f

    const-string/jumbo v2, "\u06b3"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7f
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u067e"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    const-string/jumbo v2, "\u0680"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_80
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0631"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_81

    const-string/jumbo v2, "\u0694"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_81
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0648"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_82

    const-string/jumbo v2, "\u0624"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_82
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0645"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_83

    const-string/jumbo v2, "\u0766"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_83
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_84

    const-string/jumbo v2, "\u0753"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_84
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0634"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_85

    const-string/jumbo v2, "\u075c\u064e"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_85
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0646"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_86

    const-string/jumbo v2, "\u06bd"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_86
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0637"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_87

    const-string/jumbo v2, "\u0637"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_87
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062d"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    const-string/jumbo v2, "\u0681"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_88
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062b"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_89

    const-string/jumbo v2, "\u062b"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_89
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0638"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    const-string/jumbo v2, "\u0638"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8a
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    const-string/jumbo v2, " "

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8b
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_8c
    array-length v2, v1

    if-gt v0, v2, :cond_8b

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "q"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8d

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "Q"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    :cond_8d
    const-string/jumbo v2, "q"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8e
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "w"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8f

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "W"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_90

    :cond_8f
    const-string/jumbo v2, "\u1e85"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_90
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "e"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_91

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "E"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_92

    :cond_91
    const-string/jumbo v2, "\u1e19"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_92
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "r"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_93

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "R"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_94

    :cond_93
    const-string/jumbo v2, "\u1e5d"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_94
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "t"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_95

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "T"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_96

    :cond_95
    const-string/jumbo v2, "\u1e6b"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_96
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "y"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_97

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "Y"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_98

    :cond_97
    const-string/jumbo v2, "\u1e8f"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_98
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "u"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_99

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "U"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9a

    :cond_99
    const-string/jumbo v2, "\u1e79"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9a
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "i"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9b

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "I"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9c

    :cond_9b
    const-string/jumbo v2, "\u1e2f"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9c
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "o"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9d

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "O"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9e

    :cond_9d
    const-string/jumbo v2, "\u1e53"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9e
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "p"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9f

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "P"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a0

    :cond_9f
    const-string/jumbo v2, "\u1e55"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a0
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a1

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "A"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a2

    :cond_a1
    const-string/jumbo v2, "\u1e01"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a2
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a3

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "S"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a4

    :cond_a3
    const-string/jumbo v2, "\u1e67"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a4
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "d"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a5

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "D"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a6

    :cond_a5
    const-string/jumbo v2, "\u1e13"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a6
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "f"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a7

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "F"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    :cond_a7
    const-string/jumbo v2, "\u1e1f"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a8
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "g"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a9

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "G"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_aa

    :cond_a9
    const-string/jumbo v2, "\u1e21"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_aa
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "h"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ab

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "H"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ac

    :cond_ab
    const-string/jumbo v2, "\u1e27"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ac
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "j"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ad

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "J"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ae

    :cond_ad
    const-string/jumbo v2, "\u0135"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ae
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "k"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_af

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "K"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b0

    :cond_af
    const-string/jumbo v2, "\u1e33"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b0
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "l"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b1

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "L"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b2

    :cond_b1
    const-string/jumbo v2, "\u1e3b"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b2
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "z"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b3

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "Z"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b4

    :cond_b3
    const-string/jumbo v2, "\u1e91"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b4
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b5

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "X"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b6

    :cond_b5
    const-string/jumbo v2, "\u1e8b"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b6
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b7

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "C"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b8

    :cond_b7
    const-string/jumbo v2, "\u1e09"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b8
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "v"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b9

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "V"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ba

    :cond_b9
    const-string/jumbo v2, "\u1e7f"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ba
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "b"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bb

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "B"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bc

    :cond_bb
    const-string/jumbo v2, "\u1e05"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_bc
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bd

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "N"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_be

    :cond_bd
    const-string/jumbo v2, "\u1e45"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_be
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "m"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bf

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "M"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c0

    :cond_bf
    const-string/jumbo v2, "\u1e43"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c0
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c1

    const-string/jumbo v2, "?"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c1
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0635"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c2

    const-string/jumbo v2, "\u0635"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c2
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u061f"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c3

    const-string/jumbo v2, "\u061f"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c3
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c4

    const-string/jumbo v2, "."

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c4
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c5

    const-string/jumbo v2, "!"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c5
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c6

    const-string/jumbo v2, "@"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c6
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c7

    const-string/jumbo v2, "#"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c7
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c8

    const-string/jumbo v2, "$"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c8
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c9

    const-string/jumbo v2, "%"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c9
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "^"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ca

    const-string/jumbo v2, "^"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ca
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cb

    const-string/jumbo v2, "&"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_cb
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cc

    const-string/jumbo v2, ")"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_cc
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cd

    const-string/jumbo v2, "("

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_cd
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ce

    const-string/jumbo v2, "-"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ce
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cf

    const-string/jumbo v2, "_"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_cf
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d0

    const-string/jumbo v2, "="

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d0
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d1

    const-string/jumbo v2, "+"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d1
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d2

    const-string/jumbo v2, "-"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d2
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d3

    const-string/jumbo v2, "*"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d3
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d4

    const-string/jumbo v2, "/"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d4
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u060c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d5

    const-string/jumbo v2, "\u060c"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d5
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u2019"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d6

    const-string/jumbo v2, "\u2019"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d6
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d7

    const-string/jumbo v2, ":"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d7
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d8

    const-string/jumbo v2, "<"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d8
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d9

    const-string/jumbo v2, ">"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d9
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u061b"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_da

    const-string/jumbo v2, "\u061b"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_da
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u00a9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_db

    const-string/jumbo v2, "\u00a9"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_db
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_dc

    const-string/jumbo v2, "}"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_dc
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_dd

    const-string/jumbo v2, "{"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_dd
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_de

    const-string/jumbo v2, "["

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_de
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_df

    const-string/jumbo v2, "]"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_df
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u00ab"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e0

    const-string/jumbo v2, "\u00ab"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e0
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u00bb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e1

    const-string/jumbo v2, "\u00bb"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e1
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e2

    const-string/jumbo v2, "\u06f1"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e2
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e3

    const-string/jumbo v2, "\u06f2"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e3
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e4

    const-string/jumbo v2, "\u06f3"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e4
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e5

    const-string/jumbo v2, "\u06f4"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e5
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e6

    const-string/jumbo v2, "\u06f5"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e6
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f7"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e7

    const-string/jumbo v2, "\u06f7"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e7
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e8

    const-string/jumbo v2, "\u06f6"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e8
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e9

    const-string/jumbo v2, "\u06f8"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e9
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ea

    const-string/jumbo v2, "\u06f9"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ea
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_eb

    const-string/jumbo v2, "\u06f0"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_eb
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ec

    const-string/jumbo v2, "1"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ec
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ed

    const-string/jumbo v2, "2"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ed
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ee

    const-string/jumbo v2, "3"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ee
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ef

    const-string/jumbo v2, "4"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ef
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f0

    const-string/jumbo v2, "5"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f0
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f1

    const-string/jumbo v2, "6"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f1
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "7"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f2

    const-string/jumbo v2, "7"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f2
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f3

    const-string/jumbo v2, "8"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f3
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f4

    const-string/jumbo v2, "9"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f4
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f5

    const-string/jumbo v2, "0"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f5
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0622"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f6

    const-string/jumbo v2, "\u0622"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f6
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0627"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f7

    const-string/jumbo v2, "\u0627"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f7
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0623"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f8

    const-string/jumbo v2, "\u0623"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f8
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0625"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f9

    const-string/jumbo v2, "\u0625"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f9
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0636"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fa

    const-string/jumbo v2, "\u06fb"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_fa
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0630"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fb

    const-string/jumbo v2, "\u068b"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_fb
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0632"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fc

    const-string/jumbo v2, "\u0632"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_fc
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0698"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fd

    const-string/jumbo v2, "\u0699"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_fd
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0642"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fe

    const-string/jumbo v2, "\u0642"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_fe
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0641"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ff

    const-string/jumbo v2, "\u06a2"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ff
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u063a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_100

    const-string/jumbo v2, "\u063a"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_100
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0639"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_101

    const-string/jumbo v2, "\u0639"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_101
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062e"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_102

    const-string/jumbo v2, "\u062e"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_102
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_103

    const-string/jumbo v2, "\u0684"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_103
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0686"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_104

    const-string/jumbo v2, "\u0686"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_104
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062f"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_105

    const-string/jumbo v2, "\u062f"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_105
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0628"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_106

    const-string/jumbo v2, "\u066e\u0651"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_106
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0644"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_107

    const-string/jumbo v2, "\u0644"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_107
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06cc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_108

    const-string/jumbo v2, "\u06cc"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_108
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0633"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_109

    const-string/jumbo v2, "\u069b"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_109
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06a9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10a

    const-string/jumbo v2, "\u06a9"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10a
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06af"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10b

    const-string/jumbo v2, "\u06b3"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10b
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u067e"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10c

    const-string/jumbo v2, "\u0680"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10c
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0631"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10d

    const-string/jumbo v2, "\u0694"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10d
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0648"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10e

    const-string/jumbo v2, "\u0624"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10e
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0645"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10f

    const-string/jumbo v2, "\u0766"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10f
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_110

    const-string/jumbo v2, "\u0753"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_110
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0647"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_111

    const-string/jumbo v2, "\u0647"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_111
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0634"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_112

    const-string/jumbo v2, "\u075c\u064e"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_112
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0646"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_113

    const-string/jumbo v2, "\u06bd"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_113
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0637"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_114

    const-string/jumbo v2, "\u0637"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_114
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062d"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_115

    const-string/jumbo v2, "\u0681"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_115
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062b"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_116

    const-string/jumbo v2, "\u062b"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_116
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0638"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_117

    const-string/jumbo v2, "\u0638"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_117
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    const-string/jumbo v2, " "

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_118
    return-object p1
.end method

.method public Change_name6(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_8b

    aget-object v2, v1, v0

    iput-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "q"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "Q"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "w"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "W"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const-string/jumbo v2, "\u1e84"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "e"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "E"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const-string/jumbo v2, "\u1e18"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "r"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "R"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    const-string/jumbo v2, "\u1e5c"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "t"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "T"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    const-string/jumbo v2, "\u1e70"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "y"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "Y"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    const-string/jumbo v2, "\u1e8e"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "u"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "U"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_b
    const-string/jumbo v2, "\u1e78"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "i"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "I"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_d
    const-string/jumbo v2, "\u1e2e"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "o"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "O"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_f
    const-string/jumbo v2, "\u1e50"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "p"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "P"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_11
    const-string/jumbo v2, "\u1e56"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "A"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_13
    const-string/jumbo v2, "\u1e00"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "S"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    :cond_15
    const-string/jumbo v2, "\u1e66"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "d"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "D"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_17
    const-string/jumbo v2, "\u1e0c"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "f"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "F"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    :cond_19
    const-string/jumbo v2, "\u1e1e"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "g"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "G"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    :cond_1b
    const-string/jumbo v2, "\u1e20"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "h"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "H"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    :cond_1d
    const-string/jumbo v2, "\u1e26"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1e
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "j"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "J"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    :cond_1f
    const-string/jumbo v2, "\u0134"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "k"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "K"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    :cond_21
    const-string/jumbo v2, "\u1e34"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_22
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "l"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "L"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    :cond_23
    const-string/jumbo v2, "\u1e3c"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_24
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "z"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "Z"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    :cond_25
    const-string/jumbo v2, "\u1e90"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_26
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "X"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    :cond_27
    const-string/jumbo v2, "\u1e8a"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_28
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "C"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    :cond_29
    const-string/jumbo v2, "\u1e08"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2a
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "v"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "V"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    :cond_2b
    const-string/jumbo v2, "\u1e7c"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2c
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "b"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "B"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    :cond_2d
    const-string/jumbo v2, "\u1e04"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2e
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "N"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    :cond_2f
    const-string/jumbo v2, "\u1e44"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_30
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "m"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "M"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    :cond_31
    const-string/jumbo v2, "\u1e3e"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_32
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    const-string/jumbo v2, "?"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_33
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u061f"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    const-string/jumbo v2, "\u061f"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_34
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    const-string/jumbo v2, "."

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_35
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    const-string/jumbo v2, "!"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_36
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    const-string/jumbo v2, "@"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_37
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    const-string/jumbo v2, "#"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_38
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    const-string/jumbo v2, "$"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_39
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    const-string/jumbo v2, "%"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3a
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "^"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    const-string/jumbo v2, "^"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3b
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    const-string/jumbo v2, "&"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3c
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    const-string/jumbo v2, ")"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3d
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    const-string/jumbo v2, "("

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3e
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    const-string/jumbo v2, "-"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3f
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    const-string/jumbo v2, "_"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_40
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    const-string/jumbo v2, "="

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_41
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    const-string/jumbo v2, "+"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_42
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    const-string/jumbo v2, "-"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_43
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    const-string/jumbo v2, "*"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_44
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    const-string/jumbo v2, "/"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_45
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u060c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    const-string/jumbo v2, "\u060c"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_46
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u2019"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    const-string/jumbo v2, "\u2019"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_47
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    const-string/jumbo v2, ":"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_48
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    const-string/jumbo v2, "<"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_49
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    const-string/jumbo v2, ">"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4a
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u061b"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    const-string/jumbo v2, "\u061b"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4b
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u00a9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    const-string/jumbo v2, "\u00a9"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4c
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    const-string/jumbo v2, "}"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4d
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    const-string/jumbo v2, "{"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4e
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    const-string/jumbo v2, "["

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4f
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    const-string/jumbo v2, "]"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_50
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u00ab"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    const-string/jumbo v2, "\u00ab"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_51
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u00bb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    const-string/jumbo v2, "\u00bb"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_52
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    const-string/jumbo v2, "\u06f1"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_53
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    const-string/jumbo v2, "\u06f2"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_54
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    const-string/jumbo v2, "\u06f3"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_55
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    const-string/jumbo v2, "\u06f4"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_56
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    const-string/jumbo v2, "\u06f5"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_57
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f7"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    const-string/jumbo v2, "\u06f7"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_58
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    const-string/jumbo v2, "\u06f6"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_59
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    const-string/jumbo v2, "\u06f8"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5a
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    const-string/jumbo v2, "\u06f9"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5b
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06f0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    const-string/jumbo v2, "\u06f0"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5c
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    const-string/jumbo v2, "1"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5d
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    const-string/jumbo v2, "2"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5e
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    const-string/jumbo v2, "3"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5f
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    const-string/jumbo v2, "4"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_60
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    const-string/jumbo v2, "5"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_61
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    const-string/jumbo v2, "6"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_62
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "7"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    const-string/jumbo v2, "7"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_63
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    const-string/jumbo v2, "8"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_64
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    const-string/jumbo v2, "9"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_65
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    const-string/jumbo v2, "0"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_66
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0622"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    const-string/jumbo v2, "[\u0305\u0332\u0627\u0305\u0332]"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_67
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0627"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    const-string/jumbo v2, "[\u0305\u0332\u0627\u0305\u0332]"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_68
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0623"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    const-string/jumbo v2, "[\u0305\u0332\u0627\u0305\u0332]"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_69
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0625"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    const-string/jumbo v2, "[\u0305\u0332\u0627\u0305\u0332]"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6a
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0636"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    const-string/jumbo v2, "[\u0305\u0332\u0636\u0305\u0332] "

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6b
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0630"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6c

    const-string/jumbo v2, "[\u0305\u0332\u0630\u0305\u0332]"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6c
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0632"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    const-string/jumbo v2, "[\u0305\u0332\u0632\u0305\u0332]"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6d
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0698"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    const-string/jumbo v2, "[\u0305\u0332\u0698\u0305\u0332]"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6e
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0642"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6f

    const-string/jumbo v2, "[\u0305\u0332\u0642\u0305\u0332]"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6f
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0641"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_70

    const-string/jumbo v2, "[\u0305\u0332\u0641\u0305\u0332]"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_70
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u063a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    const-string/jumbo v2, "[\u0305\u0332\u063a\u0305\u0332]"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_71
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0639"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    const-string/jumbo v2, "[\u0305\u0332\u0639\u0305\u0332]"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_72
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062e"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    const-string/jumbo v2, "[\u0305\u0332\u062e\u0305\u0332]"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_73
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    const-string/jumbo v2, "[\u0305\u0332\u062c\u0305\u0332]"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_74
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0686"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    const-string/jumbo v2, "[\u0305\u0332\u0686\u0305\u0332]"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_75
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062f"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_76

    const-string/jumbo v2, "[\u0305\u0332\u062f\u0305\u0332]"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_76
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0628"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_77

    const-string/jumbo v2, "[\u0305\u0332\u0628\u0305\u0332]\u0651"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_77
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0644"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_78

    const-string/jumbo v2, "[\u0305\u0332\u0644\u0305\u0332]"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_78
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06cc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_79

    const-string/jumbo v2, "[\u0305\u0332\u06cc\u0305\u0332]"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_79
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0633"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7a

    const-string/jumbo v2, "[\u0305\u0332\u0633\u0305\u0332]"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7a
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06a9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    const-string/jumbo v2, "[\u0305\u0332\u06a9\u0305\u0332]"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7b
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u06af"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    const-string/jumbo v2, "[\u0305\u0332\u06af\u0305\u0332]"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7c
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u067e"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7d

    const-string/jumbo v2, "[\u0305\u0332\u067e\u0305\u0332]"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7d
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0631"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    const-string/jumbo v2, "[\u0305\u0332\u0631\u0305\u0332]"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7e
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0648"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7f

    const-string/jumbo v2, "[\u0305\u0332\u0648\u0305\u0332]"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7f
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0645"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    const-string/jumbo v2, "[\u0305\u0332\u0645\u0305\u0332]"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_80
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_81

    const-string/jumbo v2, "[\u0305\u0332\u062a\u0305\u0332]"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_81
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0647"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_82

    const-string/jumbo v2, "[\u0305\u0332\u0647\u0305\u0332]"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_82
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0634"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_83

    const-string/jumbo v2, "[\u0305\u0332\u0634\u0305\u0332]\u064e"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_83
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0646"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_84

    const-string/jumbo v2, "[\u0305\u0332\u0646\u0305\u0332]"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_84
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0637"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_85

    const-string/jumbo v2, "[\u0305\u0332\u0637\u0305\u0332]"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_85
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062d"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_86

    const-string/jumbo v2, "[\u0305\u0332\u062d\u0305\u0332]"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_86
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u062b"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_87

    const-string/jumbo v2, "[\u0305\u0332\u062b\u0305\u0332]"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_87
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0638"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    const-string/jumbo v2, "[\u0305\u0332\u0638\u0305\u0332]"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_88
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, "\u0635"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_89

    const-string/jumbo v2, "[\u0305\u0332\u0635\u0305\u0332]"

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_89
    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_ki:Ljava/lang/String;

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    const-string/jumbo v2, " "

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_8b
    return-object p1
.end method

.method public Splator(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    iput-object v2, p0, Lorg/telegram/ui/ProfileMaker;->other_km:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/ProfileMaker;->other_km:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public arraysplator1(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->Change_name1(Ljava/lang/String;)Ljava/lang/String;

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->Change_name1(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method public arraysplator10(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->Change_name5(Ljava/lang/String;)Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public arraysplator11(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->Change_name5(Ljava/lang/String;)Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public arraysplator12(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->Change_name6(Ljava/lang/String;)Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public arraysplator13(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->Change_name2(Ljava/lang/String;)Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public arraysplator14(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->Change_name3(Ljava/lang/String;)Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public arraysplator15(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->Change_name4(Ljava/lang/String;)Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public arraysplator16(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->Change_name5(Ljava/lang/String;)Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public arraysplator17(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->Change_name6(Ljava/lang/String;)Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public arraysplator18(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->Change_name1(Ljava/lang/String;)Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public arraysplator19(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->Change_name2(Ljava/lang/String;)Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public arraysplator2(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->Change_name2(Ljava/lang/String;)Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public arraysplator20(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->Change_name3(Ljava/lang/String;)Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public arraysplator21(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->Change_name4(Ljava/lang/String;)Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public arraysplator22(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->Change_name5(Ljava/lang/String;)Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public arraysplator23(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->Change_name6(Ljava/lang/String;)Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public arraysplator3(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->Change_name3(Ljava/lang/String;)Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public arraysplator4(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->Change_name4(Ljava/lang/String;)Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public arraysplator5(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->Change_name5(Ljava/lang/String;)Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public arraysplator6(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->Change_name1(Ljava/lang/String;)Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public arraysplator7(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->Change_name2(Ljava/lang/String;)Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public arraysplator8(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->Change_name3(Ljava/lang/String;)Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public arraysplator9(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileMaker;->Change_name4(Ljava/lang/String;)Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 10

    const/16 v9, 0x11

    const/4 v8, -0x1

    const/4 v5, 0x1

    const/4 v7, -0x2

    const/16 v6, 0x8

    new-instance v0, Lorg/telegram/ui/ProfileMaker$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ProfileMaker$1;-><init>(Lorg/telegram/ui/ProfileMaker;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v1, 0x7f0200e8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "profilemaker"

    const v2, 0x7f0808ab

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/ProfileMaker$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileMaker$2;-><init>(Lorg/telegram/ui/ProfileMaker;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/ProfileMaker;->fragmentView:Landroid/view/View;

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ln:Landroid/widget/LinearLayout;

    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f04003e

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f1000cc

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v3, "fonts/byekan.ttf"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    const v0, 0x7f1000fe

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->name:Landroid/widget/TextView;

    const v0, 0x7f100103

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->make_name:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->name:Landroid/widget/TextView;

    const-string/jumbo v4, "chats_name"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f100100

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->last_name:Landroid/widget/TextView;

    const v0, 0x7f10008c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->change_01:Landroid/widget/TextView;

    const v0, 0x7f100104

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->change_case:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->change_case:Landroid/widget/TextView;

    const-string/jumbo v4, "chats_name"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f100121

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->change_02:Landroid/widget/TextView;

    const v0, 0x7f100125

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->change_03:Landroid/widget/TextView;

    const v0, 0x7f100129

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->change_04:Landroid/widget/TextView;

    const v0, 0x7f10012d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->change_05:Landroid/widget/TextView;

    const v0, 0x7f100131

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->change_06:Landroid/widget/TextView;

    const v0, 0x7f100135

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->change_07:Landroid/widget/TextView;

    const v0, 0x7f100139

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->change_08:Landroid/widget/TextView;

    const v0, 0x7f10013d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->change_09:Landroid/widget/TextView;

    const v0, 0x7f100141

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->change_10:Landroid/widget/TextView;

    const v0, 0x7f100145

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->change_11:Landroid/widget/TextView;

    const v0, 0x7f100149

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->change_12:Landroid/widget/TextView;

    const v0, 0x7f10014d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->change_13:Landroid/widget/TextView;

    const v0, 0x7f100151

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->change_14:Landroid/widget/TextView;

    const v0, 0x7f100155

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->change_15:Landroid/widget/TextView;

    const v0, 0x7f100159

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->change_16:Landroid/widget/TextView;

    const v0, 0x7f10015d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->change_17:Landroid/widget/TextView;

    const v0, 0x7f100161

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->change_18:Landroid/widget/TextView;

    const v0, 0x7f10010c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->change_19:Landroid/widget/TextView;

    const v0, 0x7f100111

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->change_20:Landroid/widget/TextView;

    const v0, 0x7f100115

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->change_21:Landroid/widget/TextView;

    const v0, 0x7f100119

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->change_22:Landroid/widget/TextView;

    const v0, 0x7f10011d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->change_23:Landroid/widget/TextView;

    const v0, 0x7f100089

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ch:Landroid/widget/CheckBox;

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ch:Landroid/widget/CheckBox;

    const-string/jumbo v4, "chats_name"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setTextColor(I)V

    const v0, 0x7f10005b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->scrolla:Landroid/widget/ScrollView;

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->scrolla:Landroid/widget/ScrollView;

    invoke-virtual {v0, v6}, Landroid/widget/ScrollView;->setVisibility(I)V

    const v0, 0x7f100106

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->change_01a:Landroid/widget/RelativeLayout;

    const v0, 0x7f100120

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->change_02a:Landroid/widget/RelativeLayout;

    const v0, 0x7f100124

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->change_03a:Landroid/widget/RelativeLayout;

    const v0, 0x7f100128

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->change_04a:Landroid/widget/RelativeLayout;

    const v0, 0x7f10012c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->change_05a:Landroid/widget/RelativeLayout;

    const v0, 0x7f100107

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->fr_01:Landroid/widget/FrameLayout;

    const v0, 0x7f100122

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->fr_02:Landroid/widget/FrameLayout;

    const v0, 0x7f100126

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->fr_03:Landroid/widget/FrameLayout;

    const v0, 0x7f10012a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->fr_04:Landroid/widget/FrameLayout;

    const v0, 0x7f10012e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->fr_05:Landroid/widget/FrameLayout;

    const v0, 0x7f100132

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->fr_06:Landroid/widget/FrameLayout;

    const v0, 0x7f100136

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->fr_07:Landroid/widget/FrameLayout;

    const v0, 0x7f10013a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->fr_08:Landroid/widget/FrameLayout;

    const v0, 0x7f10013e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->fr_09:Landroid/widget/FrameLayout;

    const v0, 0x7f100142

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->fr_10:Landroid/widget/FrameLayout;

    const v0, 0x7f100146

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->fr_11:Landroid/widget/FrameLayout;

    const v0, 0x7f10014a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->fr_12:Landroid/widget/FrameLayout;

    const v0, 0x7f10014e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->fr_13:Landroid/widget/FrameLayout;

    const v0, 0x7f100152

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->fr_14:Landroid/widget/FrameLayout;

    const v0, 0x7f100156

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->fr_15:Landroid/widget/FrameLayout;

    const v0, 0x7f10015a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->fr_16:Landroid/widget/FrameLayout;

    const v0, 0x7f10015e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->fr_17:Landroid/widget/FrameLayout;

    const v0, 0x7f100162

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->fr_18:Landroid/widget/FrameLayout;

    const v0, 0x7f10010d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->fr_19:Landroid/widget/FrameLayout;

    const v0, 0x7f100112

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->fr_20:Landroid/widget/FrameLayout;

    const v0, 0x7f100116

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->fr_21:Landroid/widget/FrameLayout;

    const v0, 0x7f10011a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->fr_22:Landroid/widget/FrameLayout;

    const v0, 0x7f10011e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->fr_23:Landroid/widget/FrameLayout;

    const v0, 0x7f100109

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->clip_01:Landroid/widget/FrameLayout;

    const v0, 0x7f100123

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->clip_02:Landroid/widget/FrameLayout;

    const v0, 0x7f100127

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->clip_03:Landroid/widget/FrameLayout;

    const v0, 0x7f10012b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->clip_04:Landroid/widget/FrameLayout;

    const v0, 0x7f10012f

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->clip_05:Landroid/widget/FrameLayout;

    const v0, 0x7f100133

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->clip_06:Landroid/widget/FrameLayout;

    const v0, 0x7f100137

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->clip_07:Landroid/widget/FrameLayout;

    const v0, 0x7f10013b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->clip_08:Landroid/widget/FrameLayout;

    const v0, 0x7f10013f

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->clip_09:Landroid/widget/FrameLayout;

    const v0, 0x7f100143

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->clip_10:Landroid/widget/FrameLayout;

    const v0, 0x7f100147

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->clip_11:Landroid/widget/FrameLayout;

    const v0, 0x7f10014b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->clip_12:Landroid/widget/FrameLayout;

    const v0, 0x7f10014f

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->clip_13:Landroid/widget/FrameLayout;

    const v0, 0x7f100153

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->clip_14:Landroid/widget/FrameLayout;

    const v0, 0x7f100157

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->clip_15:Landroid/widget/FrameLayout;

    const v0, 0x7f10015b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->clip_16:Landroid/widget/FrameLayout;

    const v0, 0x7f10015f

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->clip_17:Landroid/widget/FrameLayout;

    const v0, 0x7f100163

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->clip_18:Landroid/widget/FrameLayout;

    const v0, 0x7f10010e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->clip_19:Landroid/widget/FrameLayout;

    const v0, 0x7f100113

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->clip_20:Landroid/widget/FrameLayout;

    const v0, 0x7f100117

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->clip_21:Landroid/widget/FrameLayout;

    const v0, 0x7f10011b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->clip_22:Landroid/widget/FrameLayout;

    const v0, 0x7f10011f

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->clip_23:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->change_01a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->change_02a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->change_03a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->change_04a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->change_05a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    const v0, 0x7f100102

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->continue_ly:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->continue_ly:Landroid/widget/RelativeLayout;

    const-string/jumbo v4, "actionBarDefault"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    const v0, 0x7f1000fd

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->main_ly:Landroid/widget/LinearLayout;

    const v0, 0x7f100105

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->main_io:Landroid/widget/LinearLayout;

    const v0, 0x7f1000ff

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    const v0, 0x7f100101

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_last_name:Landroid/widget/EditText;

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->str:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->name:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->last_name:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->make_name:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->change_case:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->list_main:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->continue_ly:Landroid/widget/RelativeLayout;

    new-instance v3, Lorg/telegram/ui/ProfileMaker$3;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/ProfileMaker$3;-><init>(Lorg/telegram/ui/ProfileMaker;Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ln:Landroid/widget/LinearLayout;

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {v8, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->ln:Landroid/widget/LinearLayout;

    const/high16 v3, -0x40000000    # -2.0f

    invoke-static {v8, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->emptyView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->emptyView:Landroid/widget/LinearLayout;

    new-instance v2, Lorg/telegram/ui/ProfileMaker$4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ProfileMaker$4;-><init>(Lorg/telegram/ui/ProfileMaker;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "NoChats"

    const v3, 0x7f08074e

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, -0x6a6a6b

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v0, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker;->emptyView:Landroid/widget/LinearLayout;

    invoke-static {v7, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "NoChatsHelp"

    const v3, 0x7f08074f

    invoke-static {v0, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallTablet()Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0xa

    const/16 v4, 0x20

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, -0x6a6a6b

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v0, 0x41700000    # 15.0f

    invoke-virtual {v2, v5, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->emptyView:Landroid/widget/LinearLayout;

    invoke-static {v7, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->progressView:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->progressView:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->progressView:Landroid/widget/ProgressBar;

    invoke-static {v7, v7, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->fragmentView:Landroid/view/View;

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "profilemaker"

    const v2, 0x7f0808ab

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onFragmentCreate()Z
    .locals 1

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    const/4 v0, 0x1

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 1

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ProfileMaker;->delegate:Lorg/telegram/ui/ProfileMaker$OnlineThemeDelegate;

    return-void
.end method

.method public presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    move-result v0

    return v0
.end method
