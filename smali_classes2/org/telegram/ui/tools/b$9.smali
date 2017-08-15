.class Lorg/telegram/ui/tools/b$9;
.super Ljava/lang/Object;
.source "AlertShare.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/tools/b;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ZZZLorg/telegram/ui/tools/b$b;Lorg/telegram/ui/tools/b$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/telegram/ui/Components/CheckBoxSquare;

.field final synthetic b:Lorg/telegram/ui/tools/b;


# direct methods
.method constructor <init>(Lorg/telegram/ui/tools/b;Lorg/telegram/ui/Components/CheckBoxSquare;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/b$9;->b:Lorg/telegram/ui/tools/b;

    iput-object p2, p0, Lorg/telegram/ui/tools/b$9;->a:Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v6, 0x1

    iget-object v1, p0, Lorg/telegram/ui/tools/b$9;->a:Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/CheckBoxSquare;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/tools/b$9;->b:Lorg/telegram/ui/tools/b;

    invoke-static {v1}, Lorg/telegram/ui/tools/b;->h(Lorg/telegram/ui/tools/b;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v1, p0, Lorg/telegram/ui/tools/b$9;->a:Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-virtual {v1, v0, v6}, Lorg/telegram/ui/Components/CheckBoxSquare;->setChecked(ZZ)V

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/tools/b$9;->b:Lorg/telegram/ui/tools/b;

    invoke-static {v0}, Lorg/telegram/ui/tools/b;->e(Lorg/telegram/ui/tools/b;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/tools/b$9;->b:Lorg/telegram/ui/tools/b;

    invoke-static {v1}, Lorg/telegram/ui/tools/b;->d(Lorg/telegram/ui/tools/b;)Lorg/telegram/ui/tools/b$d;

    move-result-object v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/tools/b$9;->b:Lorg/telegram/ui/tools/b;

    invoke-static {v0}, Lorg/telegram/ui/tools/b;->d(Lorg/telegram/ui/tools/b;)Lorg/telegram/ui/tools/b$d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/tools/b$d;->notifyDataSetChanged()V

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/tools/b$9;->b:Lorg/telegram/ui/tools/b;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/b;->a()V

    return-void

    :cond_0
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/tools/b$9;->b:Lorg/telegram/ui/tools/b;

    invoke-static {v1}, Lorg/telegram/ui/tools/b;->e(Lorg/telegram/ui/tools/b;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/tools/b$9;->b:Lorg/telegram/ui/tools/b;

    invoke-static {v1}, Lorg/telegram/ui/tools/b;->e(Lorg/telegram/ui/tools/b;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/tools/b$9;->b:Lorg/telegram/ui/tools/b;

    invoke-static {v2}, Lorg/telegram/ui/tools/b;->d(Lorg/telegram/ui/tools/b;)Lorg/telegram/ui/tools/b$d;

    move-result-object v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/tools/b$9;->b:Lorg/telegram/ui/tools/b;

    invoke-static {v1}, Lorg/telegram/ui/tools/b;->d(Lorg/telegram/ui/tools/b;)Lorg/telegram/ui/tools/b$d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/tools/b$d;->b(I)Lorg/telegram/tgnet/TLRPC$TL_dialog;

    move-result-object v1

    :goto_3
    iget-object v2, p0, Lorg/telegram/ui/tools/b$9;->b:Lorg/telegram/ui/tools/b;

    invoke-static {v2}, Lorg/telegram/ui/tools/b;->h(Lorg/telegram/ui/tools/b;)Ljava/util/HashMap;

    move-result-object v2

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/tools/b$9;->b:Lorg/telegram/ui/tools/b;

    invoke-static {v1}, Lorg/telegram/ui/tools/b;->c(Lorg/telegram/ui/tools/b;)Lorg/telegram/ui/tools/b$e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/tools/b$e;->a(I)Lorg/telegram/tgnet/TLRPC$TL_dialog;

    move-result-object v1

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/tools/b$9;->a:Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-virtual {v0, v6, v6}, Lorg/telegram/ui/Components/CheckBoxSquare;->setChecked(ZZ)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/tools/b$9;->b:Lorg/telegram/ui/tools/b;

    invoke-static {v0}, Lorg/telegram/ui/tools/b;->c(Lorg/telegram/ui/tools/b;)Lorg/telegram/ui/tools/b$e;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/tools/b$e;->notifyDataSetChanged()V

    goto :goto_1
.end method
