.class Lorg/telegram/ui/tools/b$e$2;
.super Ljava/lang/Object;
.source "AlertShare.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/tools/b$e;->a(Ljava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Lorg/telegram/ui/tools/b$e;


# direct methods
.method constructor <init>(Lorg/telegram/ui/tools/b$e;ILjava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/b$e$2;->c:Lorg/telegram/ui/tools/b$e;

    iput p2, p0, Lorg/telegram/ui/tools/b$e$2;->a:I

    iput-object p3, p0, Lorg/telegram/ui/tools/b$e$2;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lorg/telegram/ui/tools/b$e$2;->a:I

    iget-object v1, p0, Lorg/telegram/ui/tools/b$e$2;->c:Lorg/telegram/ui/tools/b$e;

    invoke-static {v1}, Lorg/telegram/ui/tools/b$e;->a(Lorg/telegram/ui/tools/b$e;)I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move v1, v2

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/tools/b$e$2;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/tools/b$e$2;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/b$e$a;

    iget-object v4, v0, Lorg/telegram/ui/tools/b$e$a;->b:Lorg/telegram/tgnet/TLObject;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v4, :cond_3

    iget-object v0, v0, Lorg/telegram/ui/tools/b$e$a;->b:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    :cond_2
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    iget-object v4, v0, Lorg/telegram/ui/tools/b$e$a;->b:Lorg/telegram/tgnet/TLObject;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v4, :cond_2

    iget-object v0, v0, Lorg/telegram/ui/tools/b$e$a;->b:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/tools/b$e$2;->c:Lorg/telegram/ui/tools/b$e;

    invoke-static {v0}, Lorg/telegram/ui/tools/b$e;->b(Lorg/telegram/ui/tools/b$e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/tools/b$e$2;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v3

    :goto_3
    iget-object v1, p0, Lorg/telegram/ui/tools/b$e$2;->c:Lorg/telegram/ui/tools/b$e;

    invoke-static {v1}, Lorg/telegram/ui/tools/b$e;->b(Lorg/telegram/ui/tools/b$e;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/tools/b$e$2;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_4
    if-eqz v0, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/tools/b$e$2;->c:Lorg/telegram/ui/tools/b$e;

    iget-object v1, v1, Lorg/telegram/ui/tools/b$e;->a:Lorg/telegram/ui/tools/b;

    iget-object v4, p0, Lorg/telegram/ui/tools/b$e$2;->c:Lorg/telegram/ui/tools/b$e;

    iget-object v4, v4, Lorg/telegram/ui/tools/b$e;->a:Lorg/telegram/ui/tools/b;

    invoke-static {v4}, Lorg/telegram/ui/tools/b;->p(Lorg/telegram/ui/tools/b;)I

    move-result v4

    invoke-static {v1, v4}, Lorg/telegram/ui/tools/b;->a(Lorg/telegram/ui/tools/b;I)I

    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/tools/b$e$2;->c:Lorg/telegram/ui/tools/b$e;

    iget-object v4, p0, Lorg/telegram/ui/tools/b$e$2;->b:Ljava/util/ArrayList;

    invoke-static {v1, v4}, Lorg/telegram/ui/tools/b$e;->a(Lorg/telegram/ui/tools/b$e;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/tools/b$e$2;->c:Lorg/telegram/ui/tools/b$e;

    invoke-virtual {v1}, Lorg/telegram/ui/tools/b$e;->notifyDataSetChanged()V

    if-nez v3, :cond_0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/b$e$2;->c:Lorg/telegram/ui/tools/b$e;

    iget-object v0, v0, Lorg/telegram/ui/tools/b$e;->a:Lorg/telegram/ui/tools/b;

    invoke-static {v0}, Lorg/telegram/ui/tools/b;->s(Lorg/telegram/ui/tools/b;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/b$e$2;->c:Lorg/telegram/ui/tools/b$e;

    iget-object v0, v0, Lorg/telegram/ui/tools/b$e;->a:Lorg/telegram/ui/tools/b;

    invoke-static {v0}, Lorg/telegram/ui/tools/b;->r(Lorg/telegram/ui/tools/b;)Lorg/telegram/messenger/support/widget/GridLayoutManager;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/tools/b$e$2;->c:Lorg/telegram/ui/tools/b$e;

    iget-object v1, v1, Lorg/telegram/ui/tools/b$e;->a:Lorg/telegram/ui/tools/b;

    invoke-static {v1}, Lorg/telegram/ui/tools/b;->s(Lorg/telegram/ui/tools/b;)I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v2, v1}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->scrollToPositionWithOffset(II)V

    iget-object v0, p0, Lorg/telegram/ui/tools/b$e$2;->c:Lorg/telegram/ui/tools/b$e;

    iget-object v0, v0, Lorg/telegram/ui/tools/b$e;->a:Lorg/telegram/ui/tools/b;

    const/16 v1, -0x3e8

    invoke-static {v0, v1}, Lorg/telegram/ui/tools/b;->a(Lorg/telegram/ui/tools/b;I)I

    goto/16 :goto_0

    :cond_6
    move v0, v2

    goto :goto_3

    :cond_7
    move v3, v2

    goto :goto_4
.end method
