.class public Lorg/telegram/ui/tools/b$e;
.super Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
.source "AlertShare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/tools/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/tools/b$e$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/telegram/ui/tools/b;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/Timer;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/tools/b$e$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Lorg/telegram/ui/tools/b;Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/tools/b$e;->a:Lorg/telegram/ui/tools/b;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/tools/b$e;->d:Ljava/util/ArrayList;

    iput v1, p0, Lorg/telegram/ui/tools/b$e;->f:I

    iput v1, p0, Lorg/telegram/ui/tools/b$e;->g:I

    iput-object p2, p0, Lorg/telegram/ui/tools/b$e;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lorg/telegram/ui/tools/b$e;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/tools/b$e;->g:I

    return v0
.end method

.method static synthetic a(Lorg/telegram/ui/tools/b$e;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/tools/b$e;->g:I

    return p1
.end method

.method static synthetic a(Lorg/telegram/ui/tools/b$e;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/b$e;->d:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lorg/telegram/ui/tools/b$e;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/b$e;->c:Ljava/util/Timer;

    return-object p1
.end method

.method private a(Ljava/lang/String;I)V
    .locals 2

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/tools/b$e$1;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/tools/b$e$1;-><init>(Lorg/telegram/ui/tools/b$e;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/tools/b$e$a;",
            ">;I)V"
        }
    .end annotation

    new-instance v0, Lorg/telegram/ui/tools/b$e$2;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/tools/b$e$2;-><init>(Lorg/telegram/ui/tools/b$e;ILjava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lorg/telegram/ui/tools/b$e;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/tools/b$e;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lorg/telegram/ui/tools/b$e;Ljava/util/ArrayList;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/tools/b$e;->a(Ljava/util/ArrayList;I)V

    return-void
.end method

.method static synthetic b(Lorg/telegram/ui/tools/b$e;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/b$e;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lorg/telegram/ui/tools/b$e;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/b$e;->c:Ljava/util/Timer;

    return-object v0
.end method


# virtual methods
.method public a(I)Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/b$e;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/b$e$a;

    iget-object v0, v0, Lorg/telegram/ui/tools/b$e$a;->a:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/b$e;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/b$e;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/tools/b$e;->e:Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/tools/b$e;->c:Ljava/util/Timer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/tools/b$e;->c:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/tools/b$e;->c:Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/tools/b$e;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/tools/b$e;->a:Lorg/telegram/ui/tools/b;

    iget-object v1, p0, Lorg/telegram/ui/tools/b$e;->a:Lorg/telegram/ui/tools/b;

    invoke-static {v1}, Lorg/telegram/ui/tools/b;->p(Lorg/telegram/ui/tools/b;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/tools/b;->a(Lorg/telegram/ui/tools/b;I)I

    invoke-virtual {p0}, Lorg/telegram/ui/tools/b$e;->notifyDataSetChanged()V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    iget v0, p0, Lorg/telegram/ui/tools/b$e;->g:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/tools/b$e;->g:I

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/tools/b$e;->c:Ljava/util/Timer;

    iget-object v0, p0, Lorg/telegram/ui/tools/b$e;->c:Ljava/util/Timer;

    new-instance v1, Lorg/telegram/ui/tools/b$e$3;

    invoke-direct {v1, p0, p1, v2}, Lorg/telegram/ui/tools/b$e$3;-><init>(Lorg/telegram/ui/tools/b$e;Ljava/lang/String;I)V

    const-wide/16 v2, 0xc8

    const-wide/16 v4, 0x12c

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/b$e;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/ShareDialogCell;

    iget-object v1, p0, Lorg/telegram/ui/tools/b$e;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/tools/b$e$a;

    iget-object v2, v1, Lorg/telegram/ui/tools/b$e$a;->a:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v2, v2

    iget-object v3, p0, Lorg/telegram/ui/tools/b$e;->a:Lorg/telegram/ui/tools/b;

    invoke-static {v3}, Lorg/telegram/ui/tools/b;->h(Lorg/telegram/ui/tools/b;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/ui/tools/b$e$a;->a:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    iget-object v1, v1, Lorg/telegram/ui/tools/b$e$a;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2, v3, v1}, Lorg/telegram/ui/Cells/ShareDialogCell;->setDialog(IZLjava/lang/CharSequence;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 4

    new-instance v0, Lorg/telegram/ui/Cells/ShareDialogCell;

    iget-object v1, p0, Lorg/telegram/ui/tools/b$e;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/ShareDialogCell;-><init>(Landroid/content/Context;)V

    new-instance v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/tools/b$a;

    iget-object v2, p0, Lorg/telegram/ui/tools/b$e;->a:Lorg/telegram/ui/tools/b;

    invoke-direct {v1, v2, v0}, Lorg/telegram/ui/tools/b$a;-><init>(Lorg/telegram/ui/tools/b;Landroid/view/View;)V

    return-object v1
.end method
