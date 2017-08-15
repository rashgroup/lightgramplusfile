.class Lorg/telegram/ui/tools/f/e$d;
.super Ljava/lang/Object;
.source "SpecialSelectActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/tools/f/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lorg/telegram/ui/tools/f/e;


# direct methods
.method constructor <init>(Lorg/telegram/ui/tools/f/e;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/f/e$d;->a:Lorg/telegram/ui/tools/f/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e$d;->a:Lorg/telegram/ui/tools/f/e;

    invoke-static {v0}, Lorg/telegram/ui/tools/f/e;->e(Lorg/telegram/ui/tools/f/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e$d;->a:Lorg/telegram/ui/tools/f/e;

    invoke-static {v0}, Lorg/telegram/ui/tools/f/e;->f(Lorg/telegram/ui/tools/f/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e$d;->a:Lorg/telegram/ui/tools/f/e;

    invoke-static {v0}, Lorg/telegram/ui/tools/f/e;->j(Lorg/telegram/ui/tools/f/e;)Lorg/telegram/ui/Adapters/SearchAdapter1;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/telegram/ui/Adapters/SearchAdapter1;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    move-object v3, v0

    :goto_0
    if-eqz v3, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e$d;->a:Lorg/telegram/ui/tools/f/e;

    invoke-static {v0}, Lorg/telegram/ui/tools/f/e;->h(Lorg/telegram/ui/tools/f/e;)Ljava/util/HashMap;

    move-result-object v0

    iget v4, v3, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/tools/f/e$d;->a:Lorg/telegram/ui/tools/f/e;

    invoke-static {v0}, Lorg/telegram/ui/tools/f/e;->h(Lorg/telegram/ui/tools/f/e;)Ljava/util/HashMap;

    move-result-object v0

    iget v4, v3, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/ChipSpan;

    iget-object v4, p0, Lorg/telegram/ui/tools/f/e$d;->a:Lorg/telegram/ui/tools/f/e;

    invoke-static {v4}, Lorg/telegram/ui/tools/f/e;->h(Lorg/telegram/ui/tools/f/e;)Ljava/util/HashMap;

    move-result-object v4

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/text/SpannableStringBuilder;

    iget-object v4, p0, Lorg/telegram/ui/tools/f/e$d;->a:Lorg/telegram/ui/tools/f/e;

    invoke-static {v4}, Lorg/telegram/ui/tools/f/e;->b(Lorg/telegram/ui/tools/f/e;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    iget-object v4, p0, Lorg/telegram/ui/tools/f/e$d;->a:Lorg/telegram/ui/tools/f/e;

    invoke-static {v4}, Lorg/telegram/ui/tools/f/e;->g(Lorg/telegram/ui/tools/f/e;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e$d;->a:Lorg/telegram/ui/tools/f/e;

    const/4 v4, 0x1

    invoke-static {v0, v4}, Lorg/telegram/ui/tools/f/e;->c(Lorg/telegram/ui/tools/f/e;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e$d;->a:Lorg/telegram/ui/tools/f/e;

    invoke-static {v0}, Lorg/telegram/ui/tools/f/e;->b(Lorg/telegram/ui/tools/f/e;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e$d;->a:Lorg/telegram/ui/tools/f/e;

    invoke-static {v0}, Lorg/telegram/ui/tools/f/e;->b(Lorg/telegram/ui/tools/f/e;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e$d;->a:Lorg/telegram/ui/tools/f/e;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lorg/telegram/ui/tools/f/e;->c(Lorg/telegram/ui/tools/f/e;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/tools/f/e$d;->a:Lorg/telegram/ui/tools/f/e;

    invoke-static {v3}, Lorg/telegram/ui/tools/f/e;->e(Lorg/telegram/ui/tools/f/e;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/tools/f/e$d;->a:Lorg/telegram/ui/tools/f/e;

    invoke-static {v3}, Lorg/telegram/ui/tools/f/e;->f(Lorg/telegram/ui/tools/f/e;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/tools/f/e$d;->a:Lorg/telegram/ui/tools/f/e;

    invoke-static {v0, v2}, Lorg/telegram/ui/tools/f/e;->c(Lorg/telegram/ui/tools/f/e;Z)Z

    new-instance v3, Landroid/text/SpannableStringBuilder;

    const-string/jumbo v0, ""

    invoke-direct {v3, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e$d;->a:Lorg/telegram/ui/tools/f/e;

    invoke-static {v0}, Lorg/telegram/ui/tools/f/e;->g(Lorg/telegram/ui/tools/f/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/style/ImageSpan;

    const-string/jumbo v5, "<<"

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const/16 v7, 0x21

    invoke-virtual {v3, v0, v5, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/tools/f/e$d;->a:Lorg/telegram/ui/tools/f/e;

    invoke-static {v0}, Lorg/telegram/ui/tools/f/e;->l(Lorg/telegram/ui/tools/f/e;)Lorg/telegram/ui/Adapters/ContactsAdapter1;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/telegram/ui/Adapters/ContactsAdapter1;->getSectionForPosition(I)I

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/tools/f/e$d;->a:Lorg/telegram/ui/tools/f/e;

    invoke-static {v3}, Lorg/telegram/ui/tools/f/e;->l(Lorg/telegram/ui/tools/f/e;)Lorg/telegram/ui/Adapters/ContactsAdapter1;

    move-result-object v3

    invoke-virtual {v3, p3}, Lorg/telegram/ui/Adapters/ContactsAdapter1;->getPositionInSectionForPosition(I)I

    move-result v3

    if-ltz v3, :cond_3

    if-ltz v0, :cond_3

    iget-object v4, p0, Lorg/telegram/ui/tools/f/e$d;->a:Lorg/telegram/ui/tools/f/e;

    invoke-static {v4}, Lorg/telegram/ui/tools/f/e;->l(Lorg/telegram/ui/tools/f/e;)Lorg/telegram/ui/Adapters/ContactsAdapter1;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Lorg/telegram/ui/Adapters/ContactsAdapter1;->getItem(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    move-object v3, v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/tools/f/e$d;->a:Lorg/telegram/ui/tools/f/e;

    invoke-static {v0}, Lorg/telegram/ui/tools/f/e;->m(Lorg/telegram/ui/tools/f/e;)I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e$d;->a:Lorg/telegram/ui/tools/f/e;

    invoke-static {v0}, Lorg/telegram/ui/tools/f/e;->h(Lorg/telegram/ui/tools/f/e;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget-object v4, p0, Lorg/telegram/ui/tools/f/e$d;->a:Lorg/telegram/ui/tools/f/e;

    invoke-static {v4}, Lorg/telegram/ui/tools/f/e;->m(Lorg/telegram/ui/tools/f/e;)I

    move-result v4

    if-ne v0, v4, :cond_4

    :cond_3
    :goto_3
    return-void

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/tools/f/e$d;->a:Lorg/telegram/ui/tools/f/e;

    invoke-static {v0}, Lorg/telegram/ui/tools/f/e;->n(Lorg/telegram/ui/tools/f/e;)I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e$d;->a:Lorg/telegram/ui/tools/f/e;

    invoke-static {v0}, Lorg/telegram/ui/tools/f/e;->h(Lorg/telegram/ui/tools/f/e;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget v4, v4, Lorg/telegram/messenger/MessagesController;->maxGroupCount:I

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/tools/f/e$d;->a:Lorg/telegram/ui/tools/f/e;

    invoke-virtual {v1}, Lorg/telegram/ui/tools/f/e;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "AppName"

    const v2, 0x7f080086

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string/jumbo v1, "SoftUserLimitAlert"

    const v2, 0x7f08050b

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string/jumbo v1, "OK"

    const v2, 0x7f0803c8

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/tools/f/e$d;->a:Lorg/telegram/ui/tools/f/e;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/tools/f/e;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/tools/f/e$d;->a:Lorg/telegram/ui/tools/f/e;

    invoke-static {v0, v2}, Lorg/telegram/ui/tools/f/e;->c(Lorg/telegram/ui/tools/f/e;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e$d;->a:Lorg/telegram/ui/tools/f/e;

    invoke-static {v0, v3}, Lorg/telegram/ui/tools/f/e;->a(Lorg/telegram/ui/tools/f/e;Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/ui/Components/ChipSpan;

    move-result-object v0

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$User;->id:I

    iput v3, v0, Lorg/telegram/ui/Components/ChipSpan;->uid:I

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e$d;->a:Lorg/telegram/ui/tools/f/e;

    invoke-static {v0, v1}, Lorg/telegram/ui/tools/f/e;->c(Lorg/telegram/ui/tools/f/e;Z)Z

    move v0, v2

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/tools/f/e$d;->a:Lorg/telegram/ui/tools/f/e;

    invoke-static {v0}, Lorg/telegram/ui/tools/f/e;->b(Lorg/telegram/ui/tools/f/e;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e$d;->a:Lorg/telegram/ui/tools/f/e;

    invoke-static {v0}, Lorg/telegram/ui/tools/f/e;->b(Lorg/telegram/ui/tools/f/e;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e$d;->a:Lorg/telegram/ui/tools/f/e;

    invoke-static {v0, v1}, Lorg/telegram/ui/tools/f/e;->c(Lorg/telegram/ui/tools/f/e;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e$d;->a:Lorg/telegram/ui/tools/f/e;

    invoke-static {v0}, Lorg/telegram/ui/tools/f/e;->j(Lorg/telegram/ui/tools/f/e;)Lorg/telegram/ui/Adapters/SearchAdapter1;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Adapters/SearchAdapter1;->searchDialogs(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e$d;->a:Lorg/telegram/ui/tools/f/e;

    invoke-static {v0, v1}, Lorg/telegram/ui/tools/f/e;->a(Lorg/telegram/ui/tools/f/e;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e$d;->a:Lorg/telegram/ui/tools/f/e;

    invoke-static {v0, v1}, Lorg/telegram/ui/tools/f/e;->b(Lorg/telegram/ui/tools/f/e;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e$d;->a:Lorg/telegram/ui/tools/f/e;

    invoke-static {v0}, Lorg/telegram/ui/tools/f/e;->i(Lorg/telegram/ui/tools/f/e;)Lorg/telegram/ui/Components/LetterSectionsListView;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/tools/f/e$d;->a:Lorg/telegram/ui/tools/f/e;

    invoke-static {v3}, Lorg/telegram/ui/tools/f/e;->l(Lorg/telegram/ui/tools/f/e;)Lorg/telegram/ui/Adapters/ContactsAdapter1;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/LetterSectionsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e$d;->a:Lorg/telegram/ui/tools/f/e;

    invoke-static {v0}, Lorg/telegram/ui/tools/f/e;->l(Lorg/telegram/ui/tools/f/e;)Lorg/telegram/ui/Adapters/ContactsAdapter1;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/ContactsAdapter1;->notifyDataSetChanged()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e$d;->a:Lorg/telegram/ui/tools/f/e;

    invoke-static {v0}, Lorg/telegram/ui/tools/f/e;->i(Lorg/telegram/ui/tools/f/e;)Lorg/telegram/ui/Components/LetterSectionsListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/LetterSectionsListView;->setFastScrollAlwaysVisible(Z)V

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/tools/f/e$d;->a:Lorg/telegram/ui/tools/f/e;

    invoke-static {v0}, Lorg/telegram/ui/tools/f/e;->i(Lorg/telegram/ui/tools/f/e;)Lorg/telegram/ui/Components/LetterSectionsListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/LetterSectionsListView;->setFastScrollEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e$d;->a:Lorg/telegram/ui/tools/f/e;

    invoke-static {v0}, Lorg/telegram/ui/tools/f/e;->i(Lorg/telegram/ui/tools/f/e;)Lorg/telegram/ui/Components/LetterSectionsListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LetterSectionsListView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/e$d;->a:Lorg/telegram/ui/tools/f/e;

    invoke-static {v0}, Lorg/telegram/ui/tools/f/e;->k(Lorg/telegram/ui/tools/f/e;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "NoContacts"

    const v2, 0x7f08034a

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_8
    instance-of v1, p2, Lorg/telegram/ui/Cells/UserCell;

    if-eqz v1, :cond_3

    check-cast p2, Lorg/telegram/ui/Cells/UserCell;

    invoke-virtual {p2, v0, v2}, Lorg/telegram/ui/Cells/UserCell;->setChecked(ZZ)V

    goto/16 :goto_3
.end method
