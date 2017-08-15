.class public Lorg/telegram/ui/Adapters/SearchAdapter2;
.super Lorg/telegram/ui/Adapters/BaseSearchAdapter;
.source "SearchAdapter2.java"


# instance fields
.field private allowBots:Z

.field private allowChats:Z

.field private allowUsernameSearch:Z

.field private checkedMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "*>;"
        }
    .end annotation
.end field

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

.field private mContext:Landroid/content/Context;

.field private onlyMutual:Z

.field private searchResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
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

.field private useUserCell:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/HashMap;ZZZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;ZZZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/telegram/ui/Adapters/BaseSearchAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter2;->searchResult:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter2;->searchResultNames:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapter2;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lorg/telegram/ui/Adapters/SearchAdapter2;->ignoreUsers:Ljava/util/HashMap;

    iput-boolean p4, p0, Lorg/telegram/ui/Adapters/SearchAdapter2;->onlyMutual:Z

    iput-boolean p3, p0, Lorg/telegram/ui/Adapters/SearchAdapter2;->allowUsernameSearch:Z

    iput-boolean p5, p0, Lorg/telegram/ui/Adapters/SearchAdapter2;->allowChats:Z

    iput-boolean p6, p0, Lorg/telegram/ui/Adapters/SearchAdapter2;->allowBots:Z

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Adapters/SearchAdapter2;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter2;->searchTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Adapters/SearchAdapter2;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapter2;->searchTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Adapters/SearchAdapter2;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/SearchAdapter2;->processSearch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/Adapters/SearchAdapter2;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter2;->allowUsernameSearch:Z

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Adapters/SearchAdapter2;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter2;->allowChats:Z

    return v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Adapters/SearchAdapter2;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter2;->allowBots:Z

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Adapters/SearchAdapter2;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Adapters/SearchAdapter2;->updateSearchResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/Adapters/SearchAdapter2;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter2;->onlyMutual:Z

    return v0
.end method

.method static synthetic access$702(Lorg/telegram/ui/Adapters/SearchAdapter2;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapter2;->searchResult:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$802(Lorg/telegram/ui/Adapters/SearchAdapter2;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapter2;->searchResultNames:Ljava/util/ArrayList;

    return-object p1
.end method

.method private processSearch(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Adapters/SearchAdapter2$2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Adapters/SearchAdapter2$2;-><init>(Lorg/telegram/ui/Adapters/SearchAdapter2;Ljava/lang/String;)V

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
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/telegram/ui/Adapters/SearchAdapter2$3;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Adapters/SearchAdapter2$3;-><init>(Lorg/telegram/ui/Adapters/SearchAdapter2;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter2;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Adapters/SearchAdapter2;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Adapters/SearchAdapter2;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lorg/telegram/tgnet/TLObject;
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter2;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Adapters/SearchAdapter2;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter2;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLObject;

    :goto_0
    return-object v0

    :cond_0
    if-le p1, v0, :cond_1

    add-int/2addr v1, v0

    if-gt p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Adapters/SearchAdapter2;->globalSearch:Ljava/util/ArrayList;

    sub-int v0, p1, v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLObject;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter2;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter2;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_e

    new-instance v1, Lorg/telegram/ui/Cells/GreySectionCell;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter2;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Cells/GreySectionCell;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    check-cast v0, Lorg/telegram/ui/Cells/GreySectionCell;

    const-string/jumbo v2, "GlobalSearch"

    const v3, 0x7f080260

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/GreySectionCell;->setText(Ljava/lang/String;)V

    move-object v6, v1

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    if-nez p2, :cond_d

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter2;->useUserCell:Z

    if-eqz v0, :cond_2

    new-instance v1, Lorg/telegram/ui/Cells/UserCell;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter2;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lorg/telegram/ui/Cells/UserCell;-><init>(Landroid/content/Context;IIZ)V

    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter2;->checkedMap:Ljava/util/HashMap;

    if-eqz v0, :cond_c

    move-object v0, v1

    check-cast v0, Lorg/telegram/ui/Cells/UserCell;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Cells/UserCell;->setChecked(ZZ)V

    move-object v6, v1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Adapters/SearchAdapter2;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    const/4 v0, 0x0

    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v3, :cond_3

    move-object v0, v1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    move-object v0, v1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move v7, v0

    :goto_2
    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lorg/telegram/ui/Adapters/SearchAdapter2;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter2;->searchResultNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_a

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_a

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "@"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v3, 0x0

    move-object v4, v0

    :goto_3
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter2;->useUserCell:Z

    if-eqz v0, :cond_6

    move-object v0, v6

    check-cast v0, Lorg/telegram/ui/Cells/UserCell;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v4, v2}, Lorg/telegram/ui/Cells/UserCell;->setData(Lorg/telegram/tgnet/TLObject;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter2;->checkedMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    move-object v0, v6

    check-cast v0, Lorg/telegram/ui/Cells/UserCell;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/SearchAdapter2;->checkedMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/UserCell;->setChecked(ZZ)V

    goto/16 :goto_0

    :cond_2
    new-instance v1, Lorg/telegram/ui/Cells/ProfileSearchCell;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter2;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Cells/ProfileSearchCell;-><init>(Landroid/content/Context;)V

    move-object v6, v1

    goto :goto_1

    :cond_3
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v3, :cond_b

    move-object v0, v1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    move-object v0, v1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    move v7, v0

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Adapters/SearchAdapter2;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le p1, v3, :cond_9

    if-eqz v2, :cond_9

    iget-object v3, p0, Lorg/telegram/ui/Adapters/SearchAdapter2;->lastFoundUsername:Ljava/lang/String;

    const-string/jumbo v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :cond_5
    :try_start_0
    const-string/jumbo v4, "<c#ff4d83b3>@%s</c>%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v8, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v3, v0

    goto :goto_3

    :catch_0
    move-exception v3

    const-string/jumbo v4, "tmessages"

    invoke-static {v4, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v3, v0

    move-object v4, v2

    goto/16 :goto_3

    :cond_6
    move-object v0, v6

    check-cast v0, Lorg/telegram/ui/Cells/ProfileSearchCell;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setData(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    move-object v0, v6

    check-cast v0, Lorg/telegram/ui/Cells/ProfileSearchCell;

    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/SearchAdapter2;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq p1, v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/Adapters/SearchAdapter2;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq p1, v1, :cond_7

    const/4 v1, 0x1

    :goto_4
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->useSeparator:Z

    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter2;->ignoreUsers:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter2;->ignoreUsers:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, v6

    check-cast v0, Lorg/telegram/ui/Cells/ProfileSearchCell;

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawAlpha:F

    goto/16 :goto_0

    :cond_7
    const/4 v1, 0x0

    goto :goto_4

    :cond_8
    move-object v0, v6

    check-cast v0, Lorg/telegram/ui/Cells/ProfileSearchCell;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->drawAlpha:F

    goto/16 :goto_0

    :cond_9
    move-object v3, v0

    goto/16 :goto_3

    :cond_a
    move-object v3, v0

    goto/16 :goto_3

    :cond_b
    move v7, v2

    move-object v2, v0

    goto/16 :goto_2

    :cond_c
    move-object v6, v1

    goto/16 :goto_1

    :cond_d
    move-object v6, p2

    goto/16 :goto_1

    :cond_e
    move-object v6, p2

    goto/16 :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter2;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter2;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter2;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGlobalSearch(I)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/ui/Adapters/SearchAdapter2;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Adapters/SearchAdapter2;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ltz p1, :cond_1

    if-ge p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-le p1, v1, :cond_0

    add-int/2addr v1, v2

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public searchDialogs(Ljava/lang/String;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter2;->searchTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter2;->searchTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter2;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter2;->searchResultNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter2;->allowUsernameSearch:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iget-boolean v1, p0, Lorg/telegram/ui/Adapters/SearchAdapter2;->allowChats:Z

    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/SearchAdapter2;->allowBots:Z

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/ui/Adapters/SearchAdapter2;->queryServerSearch(Ljava/lang/String;ZZ)V

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/SearchAdapter2;->notifyDataSetChanged()V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter2;->searchTimer:Ljava/util/Timer;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter2;->searchTimer:Ljava/util/Timer;

    new-instance v1, Lorg/telegram/ui/Adapters/SearchAdapter2$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Adapters/SearchAdapter2$1;-><init>(Lorg/telegram/ui/Adapters/SearchAdapter2;Ljava/lang/String;)V

    const-wide/16 v2, 0xc8

    const-wide/16 v4, 0x12c

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_1
.end method

.method public setCheckedMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapter2;->checkedMap:Ljava/util/HashMap;

    return-void
.end method

.method public setUseUserCell(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/SearchAdapter2;->useUserCell:Z

    return-void
.end method
