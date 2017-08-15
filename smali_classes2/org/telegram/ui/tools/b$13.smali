.class Lorg/telegram/ui/tools/b$13;
.super Ljava/lang/Object;
.source "AlertShare.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    iput-object p1, p0, Lorg/telegram/ui/tools/b$13;->a:Lorg/telegram/ui/tools/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/tools/b$13;->a:Lorg/telegram/ui/tools/b;

    invoke-static {v0}, Lorg/telegram/ui/tools/b;->o(Lorg/telegram/ui/tools/b;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/tools/b$13;->a:Lorg/telegram/ui/tools/b;

    invoke-static {v1}, Lorg/telegram/ui/tools/b;->e(Lorg/telegram/ui/tools/b;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/tools/b$13;->a:Lorg/telegram/ui/tools/b;

    invoke-static {v2}, Lorg/telegram/ui/tools/b;->c(Lorg/telegram/ui/tools/b;)Lorg/telegram/ui/tools/b$e;

    move-result-object v2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/tools/b$13;->a:Lorg/telegram/ui/tools/b;

    iget-object v2, p0, Lorg/telegram/ui/tools/b$13;->a:Lorg/telegram/ui/tools/b;

    invoke-static {v2}, Lorg/telegram/ui/tools/b;->p(Lorg/telegram/ui/tools/b;)I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/tools/b;->a(Lorg/telegram/ui/tools/b;I)I

    iget-object v1, p0, Lorg/telegram/ui/tools/b$13;->a:Lorg/telegram/ui/tools/b;

    invoke-static {v1}, Lorg/telegram/ui/tools/b;->e(Lorg/telegram/ui/tools/b;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/tools/b$13;->a:Lorg/telegram/ui/tools/b;

    invoke-static {v2}, Lorg/telegram/ui/tools/b;->c(Lorg/telegram/ui/tools/b;)Lorg/telegram/ui/tools/b$e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    iget-object v1, p0, Lorg/telegram/ui/tools/b$13;->a:Lorg/telegram/ui/tools/b;

    invoke-static {v1}, Lorg/telegram/ui/tools/b;->c(Lorg/telegram/ui/tools/b;)Lorg/telegram/ui/tools/b$e;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/tools/b$e;->notifyDataSetChanged()V

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/tools/b$13;->a:Lorg/telegram/ui/tools/b;

    invoke-static {v1}, Lorg/telegram/ui/tools/b;->q(Lorg/telegram/ui/tools/b;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/tools/b$13;->a:Lorg/telegram/ui/tools/b;

    invoke-static {v1}, Lorg/telegram/ui/tools/b;->q(Lorg/telegram/ui/tools/b;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v1

    const-string/jumbo v2, "NoResult"

    const v3, 0x7f08035c

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/tools/b$13;->a:Lorg/telegram/ui/tools/b;

    invoke-static {v1}, Lorg/telegram/ui/tools/b;->c(Lorg/telegram/ui/tools/b;)Lorg/telegram/ui/tools/b$e;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/tools/b$13;->a:Lorg/telegram/ui/tools/b;

    invoke-static {v1}, Lorg/telegram/ui/tools/b;->c(Lorg/telegram/ui/tools/b;)Lorg/telegram/ui/tools/b$e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/tools/b$e;->a(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/tools/b$13;->a:Lorg/telegram/ui/tools/b;

    invoke-static {v1}, Lorg/telegram/ui/tools/b;->e(Lorg/telegram/ui/tools/b;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/tools/b$13;->a:Lorg/telegram/ui/tools/b;

    invoke-static {v2}, Lorg/telegram/ui/tools/b;->d(Lorg/telegram/ui/tools/b;)Lorg/telegram/ui/tools/b$d;

    move-result-object v2

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/tools/b$13;->a:Lorg/telegram/ui/tools/b;

    invoke-static {v1}, Lorg/telegram/ui/tools/b;->p(Lorg/telegram/ui/tools/b;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/tools/b$13;->a:Lorg/telegram/ui/tools/b;

    invoke-static {v2}, Lorg/telegram/ui/tools/b;->q(Lorg/telegram/ui/tools/b;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v2

    const-string/jumbo v3, "NoChats"

    const v4, 0x7f080348

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/telegram/ui/tools/b$13;->a:Lorg/telegram/ui/tools/b;

    invoke-static {v2}, Lorg/telegram/ui/tools/b;->e(Lorg/telegram/ui/tools/b;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/tools/b$13;->a:Lorg/telegram/ui/tools/b;

    invoke-static {v3}, Lorg/telegram/ui/tools/b;->d(Lorg/telegram/ui/tools/b;)Lorg/telegram/ui/tools/b$d;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    iget-object v2, p0, Lorg/telegram/ui/tools/b$13;->a:Lorg/telegram/ui/tools/b;

    invoke-static {v2}, Lorg/telegram/ui/tools/b;->d(Lorg/telegram/ui/tools/b;)Lorg/telegram/ui/tools/b$d;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/tools/b$d;->notifyDataSetChanged()V

    if-lez v1, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/tools/b$13;->a:Lorg/telegram/ui/tools/b;

    invoke-static {v2}, Lorg/telegram/ui/tools/b;->r(Lorg/telegram/ui/tools/b;)Lorg/telegram/messenger/support/widget/GridLayoutManager;

    move-result-object v2

    const/4 v3, 0x0

    neg-int v1, v1

    invoke-virtual {v2, v3, v1}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
