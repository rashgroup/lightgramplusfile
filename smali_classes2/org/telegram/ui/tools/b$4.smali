.class Lorg/telegram/ui/tools/b$4;
.super Ljava/lang/Object;
.source "AlertShare.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/tools/b;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ZZZLorg/telegram/ui/tools/b$b;Lorg/telegram/ui/tools/b$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/telegram/ui/tools/b;


# direct methods
.method constructor <init>(Lorg/telegram/ui/tools/b;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/b$4;->a:Lorg/telegram/ui/tools/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lorg/telegram/ui/tools/b$4;->a:Lorg/telegram/ui/tools/b;

    invoke-static {v0}, Lorg/telegram/ui/tools/b;->e(Lorg/telegram/ui/tools/b;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/tools/b$4;->a:Lorg/telegram/ui/tools/b;

    invoke-static {v1}, Lorg/telegram/ui/tools/b;->d(Lorg/telegram/ui/tools/b;)Lorg/telegram/ui/tools/b$d;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/b$4;->a:Lorg/telegram/ui/tools/b;

    invoke-static {v0}, Lorg/telegram/ui/tools/b;->d(Lorg/telegram/ui/tools/b;)Lorg/telegram/ui/tools/b$d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/telegram/ui/tools/b$d;->b(I)Lorg/telegram/tgnet/TLRPC$TL_dialog;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/tools/b$4;->a:Lorg/telegram/ui/tools/b;

    invoke-static {v0}, Lorg/telegram/ui/tools/b;->c(Lorg/telegram/ui/tools/b;)Lorg/telegram/ui/tools/b$e;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/telegram/ui/tools/b$e;->a(I)Lorg/telegram/tgnet/TLRPC$TL_dialog;

    move-result-object v0

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/telegram/ui/Cells/ShareDialogCell;

    iget-object v1, p0, Lorg/telegram/ui/tools/b$4;->a:Lorg/telegram/ui/tools/b;

    invoke-static {v1}, Lorg/telegram/ui/tools/b;->h(Lorg/telegram/ui/tools/b;)Ljava/util/HashMap;

    move-result-object v1

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/tools/b$4;->a:Lorg/telegram/ui/tools/b;

    invoke-static {v1}, Lorg/telegram/ui/tools/b;->h(Lorg/telegram/ui/tools/b;)Ljava/util/HashMap;

    move-result-object v1

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v4}, Lorg/telegram/ui/Cells/ShareDialogCell;->setChecked(ZZ)V

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/tools/b$4;->a:Lorg/telegram/ui/tools/b;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/b;->a()V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/tools/b$4;->a:Lorg/telegram/ui/tools/b;

    invoke-static {v1}, Lorg/telegram/ui/tools/b;->h(Lorg/telegram/ui/tools/b;)Ljava/util/HashMap;

    move-result-object v1

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v4, v4}, Lorg/telegram/ui/Cells/ShareDialogCell;->setChecked(ZZ)V

    goto :goto_2
.end method
