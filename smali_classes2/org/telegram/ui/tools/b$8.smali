.class Lorg/telegram/ui/tools/b$8;
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
.field final synthetic a:Lorg/telegram/ui/tools/b$c;

.field final synthetic b:Lorg/telegram/ui/tools/b$b;

.field final synthetic c:Lorg/telegram/ui/tools/b;


# direct methods
.method constructor <init>(Lorg/telegram/ui/tools/b;Lorg/telegram/ui/tools/b$c;Lorg/telegram/ui/tools/b$b;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/b$8;->c:Lorg/telegram/ui/tools/b;

    iput-object p2, p0, Lorg/telegram/ui/tools/b$8;->a:Lorg/telegram/ui/tools/b$c;

    iput-object p3, p0, Lorg/telegram/ui/tools/b$8;->b:Lorg/telegram/ui/tools/b$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lorg/telegram/ui/tools/b$8;->c:Lorg/telegram/ui/tools/b;

    invoke-static {v0}, Lorg/telegram/ui/tools/b;->h(Lorg/telegram/ui/tools/b;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/tools/b$8;->c:Lorg/telegram/ui/tools/b;

    invoke-static {v0}, Lorg/telegram/ui/tools/b;->i(Lorg/telegram/ui/tools/b;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/tools/b$8;->c:Lorg/telegram/ui/tools/b;

    invoke-static {v0}, Lorg/telegram/ui/tools/b;->j(Lorg/telegram/ui/tools/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/tools/b$8;->c:Lorg/telegram/ui/tools/b;

    invoke-static {v0, v8}, Lorg/telegram/ui/tools/b;->b(Lorg/telegram/ui/tools/b;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/tools/b$8;->c:Lorg/telegram/ui/tools/b;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/b;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "Loading"

    const v2, 0x7f0802df

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/tools/b$8;->c:Lorg/telegram/ui/tools/b;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/b;->dismiss()V

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/tools/b$8;->b:Lorg/telegram/ui/tools/b$b;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/tools/b$8;->b:Lorg/telegram/ui/tools/b$b;

    invoke-interface {v0}, Lorg/telegram/ui/tools/b$b;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_2
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/tools/b$8;->c:Lorg/telegram/ui/tools/b;

    iget-object v1, p0, Lorg/telegram/ui/tools/b$8;->c:Lorg/telegram/ui/tools/b;

    invoke-virtual {v1}, Lorg/telegram/ui/tools/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/tools/b;->a(Lorg/telegram/ui/tools/b;Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/tools/b$8;->c:Lorg/telegram/ui/tools/b;

    invoke-static {v0}, Lorg/telegram/ui/tools/b;->k(Lorg/telegram/ui/tools/b;)Ljava/util/ArrayList;

    move-result-object v9

    iget-object v0, p0, Lorg/telegram/ui/tools/b$8;->c:Lorg/telegram/ui/tools/b;

    invoke-static {v0}, Lorg/telegram/ui/tools/b;->h(Lorg/telegram/ui/tools/b;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v1, v2

    if-gez v1, :cond_4

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    neg-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v1, :cond_5

    :cond_4
    move v4, v8

    :goto_4
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    iget-object v1, p0, Lorg/telegram/ui/tools/b$8;->a:Lorg/telegram/ui/tools/b$c;

    if-eqz v1, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/tools/b$8;->a:Lorg/telegram/ui/tools/b$c;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-interface {v2, v0, v1, v4}, Lorg/telegram/ui/tools/b$c;->a(Lorg/telegram/tgnet/TLRPC$TL_dialog;Ljava/lang/Long;Z)V

    goto :goto_3

    :cond_5
    move v4, v7

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/tools/b$8;->c:Lorg/telegram/ui/tools/b;

    invoke-static {v0}, Lorg/telegram/ui/tools/b;->l(Lorg/telegram/ui/tools/b;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v5, p0, Lorg/telegram/ui/tools/b$8;->c:Lorg/telegram/ui/tools/b;

    invoke-static {v5}, Lorg/telegram/ui/tools/b;->m(Lorg/telegram/ui/tools/b;)Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/SendMessagesHelper;->processProForward(Lorg/telegram/messenger/MessageObject;JZZ)V

    goto :goto_5

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/tools/b$8;->c:Lorg/telegram/ui/tools/b;

    invoke-static {v0}, Lorg/telegram/ui/tools/b;->n(Lorg/telegram/ui/tools/b;)Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v5, p0, Lorg/telegram/ui/tools/b$8;->c:Lorg/telegram/ui/tools/b;

    invoke-static {v5}, Lorg/telegram/ui/tools/b;->m(Lorg/telegram/ui/tools/b;)Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/SendMessagesHelper;->processForwardFromMyName2(Lorg/telegram/messenger/MessageObject;JZZ)V

    goto :goto_6

    :cond_8
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v1

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v9, v2, v3}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/util/ArrayList;J)V

    goto/16 :goto_3

    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/tools/b$8;->c:Lorg/telegram/ui/tools/b;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/b;->dismiss()V

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_2
.end method
