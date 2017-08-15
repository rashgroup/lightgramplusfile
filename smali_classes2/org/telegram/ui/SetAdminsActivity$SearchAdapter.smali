.class public Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SetAdminsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/SetAdminsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SearchAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private searchResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$ChatParticipant;",
            ">;"
        }
    .end annotation
.end field

.field private searchResultNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private searchTimer:Ljava/util/Timer;

.field final synthetic this$0:Lorg/telegram/ui/SetAdminsActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/SetAdminsActivity;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->searchResultNames:Ljava/util/ArrayList;

    iput-object p2, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1302(Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1800(Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->searchTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$1802(Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->searchTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$1900(Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->processSearch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->updateSearchResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2102(Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->searchResultNames:Ljava/util/ArrayList;

    return-object p1
.end method

.method private processSearch(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter$2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter$2;-><init>(Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateSearchResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$ChatParticipant;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter$3;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter$3;-><init>(Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getItem(I)Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 10

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, p2}, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->getItem(I)Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    move-result-object v5

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v2, v5, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    iget-object v2, v6, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->searchResultNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "@"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v2, v0

    :goto_0
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/UserCell;

    invoke-virtual {v0, v6, v1, v2, v3}, Lorg/telegram/ui/Cells/UserCell;->setData(Lorg/telegram/tgnet/TLObject;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v6, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->chat_id:I
    invoke-static {v6}, Lorg/telegram/ui/SetAdminsActivity;->access$1000(Lorg/telegram/ui/SetAdminsActivity;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    # setter for: Lorg/telegram/ui/SetAdminsActivity;->chat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v1, v2}, Lorg/telegram/ui/SetAdminsActivity;->access$902(Lorg/telegram/ui/SetAdminsActivity;Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$Chat;

    instance-of v1, v5, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->chat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v1}, Lorg/telegram/ui/SetAdminsActivity;->access$900(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->chat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v1}, Lorg/telegram/ui/SetAdminsActivity;->access$900(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->admins_enabled:Z

    if-nez v1, :cond_3

    :cond_0
    move v1, v4

    :goto_1
    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Cells/UserCell;->setChecked(ZZ)V

    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->chat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v1}, Lorg/telegram/ui/SetAdminsActivity;->access$900(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->chat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v1}, Lorg/telegram/ui/SetAdminsActivity;->access$900(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->admins_enabled:Z

    if-eqz v1, :cond_1

    iget v1, v5, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    if-ne v1, v2, :cond_2

    :cond_1
    move v3, v4

    :cond_2
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/UserCell;->setCheckDisabled(Z)V

    return-void

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_5
    move-object v2, v1

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 6

    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    new-instance v1, Lorg/telegram/ui/Cells/UserCell;

    iget-object v2, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/telegram/ui/Cells/UserCell;-><init>(Landroid/content/Context;IIZ)V

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public search(Ljava/lang/String;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->searchTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->searchTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->searchResultNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->notifyDataSetChanged()V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->searchTimer:Ljava/util/Timer;

    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->searchTimer:Ljava/util/Timer;

    new-instance v1, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter$1;-><init>(Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;Ljava/lang/String;)V

    const-wide/16 v2, 0xc8

    const-wide/16 v4, 0x12c

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_1
.end method
