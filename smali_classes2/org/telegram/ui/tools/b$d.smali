.class Lorg/telegram/ui/tools/b$d;
.super Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
.source "AlertShare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/tools/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lorg/telegram/ui/tools/b;

.field private b:Landroid/content/Context;

.field private c:I

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/telegram/ui/tools/b;Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/tools/b$d;->a:Lorg/telegram/ui/tools/b;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;-><init>()V

    iput v1, p0, Lorg/telegram/ui/tools/b$d;->c:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/tools/b$d;->d:Ljava/util/ArrayList;

    iput-object p2, p0, Lorg/telegram/ui/tools/b$d;->b:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lorg/telegram/ui/tools/b$d;->a(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/tools/b$d;->d:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/telegram/ui/tools/b$d;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic a(Lorg/telegram/ui/tools/b$d;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/tools/b$d;->c:I

    return p1
.end method

.method static synthetic a(Lorg/telegram/ui/tools/b$d;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/b$d;->d:Ljava/util/ArrayList;

    return-object p1
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lorg/telegram/ui/tools/b$d;->c:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lorg/telegram/ui/DialogsA;

    invoke-direct {v0}, Lorg/telegram/ui/DialogsA;-><init>()V

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsA;->getDialogsA()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lorg/telegram/ui/DialogsA;

    invoke-direct {v0}, Lorg/telegram/ui/DialogsA;-><init>()V

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsA;->getDialogsA()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    new-instance v0, Lorg/telegram/ui/DialogsA;

    invoke-direct {v0}, Lorg/telegram/ui/DialogsA;-><init>()V

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsA;->getDialogsA()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    new-instance v0, Lorg/telegram/ui/DialogsA;

    invoke-direct {v0}, Lorg/telegram/ui/DialogsA;-><init>()V

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsA;->getDialogsA()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    new-instance v0, Lorg/telegram/ui/DialogsA;

    invoke-direct {v0}, Lorg/telegram/ui/DialogsA;-><init>()V

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsA;->getDialogsA()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    new-instance v0, Lorg/telegram/ui/DialogsA;

    invoke-direct {v0}, Lorg/telegram/ui/DialogsA;-><init>()V

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsA;->getDialogsA()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    new-instance v0, Lorg/telegram/ui/DialogsA;

    invoke-direct {v0}, Lorg/telegram/ui/DialogsA;-><init>()V

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsA;->getDialogsA()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    new-instance v0, Lorg/telegram/ui/DialogsA;

    invoke-direct {v0}, Lorg/telegram/ui/DialogsA;-><init>()V

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsA;->getDialogsA()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    new-instance v0, Lorg/telegram/ui/DialogsA;

    invoke-direct {v0}, Lorg/telegram/ui/DialogsA;-><init>()V

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsA;->getDialogsA()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public a(I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation

    iput p1, p0, Lorg/telegram/ui/tools/b$d;->c:I

    invoke-virtual {p0}, Lorg/telegram/ui/tools/b$d;->a()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/b$d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/tools/b$d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/b$d;->d:Ljava/util/ArrayList;

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

    invoke-virtual {p0, p2}, Lorg/telegram/ui/tools/b$d;->b(I)Lorg/telegram/tgnet/TLRPC$TL_dialog;

    move-result-object v1

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v2, v2

    iget-object v3, p0, Lorg/telegram/ui/tools/b$d;->a:Lorg/telegram/ui/tools/b;

    invoke-static {v3}, Lorg/telegram/ui/tools/b;->h(Lorg/telegram/ui/tools/b;)Ljava/util/HashMap;

    move-result-object v3

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lorg/telegram/ui/Cells/ShareDialogCell;->setDialog(IZLjava/lang/CharSequence;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 4

    new-instance v0, Lorg/telegram/ui/Cells/ShareDialogCell;

    iget-object v1, p0, Lorg/telegram/ui/tools/b$d;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/ShareDialogCell;-><init>(Landroid/content/Context;)V

    new-instance v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/tools/b$a;

    iget-object v2, p0, Lorg/telegram/ui/tools/b$d;->a:Lorg/telegram/ui/tools/b;

    invoke-direct {v1, v2, v0}, Lorg/telegram/ui/tools/b$a;-><init>(Lorg/telegram/ui/tools/b;Landroid/view/View;)V

    return-object v1
.end method
