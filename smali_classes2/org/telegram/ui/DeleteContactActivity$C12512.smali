.class Lorg/telegram/ui/DeleteContactActivity$C12512;
.super Ljava/lang/Object;
.source "DeleteContactActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/DeleteContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "C12512"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DeleteContactActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DeleteContactActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/DeleteContactActivity$C12512;->this$0:Lorg/telegram/ui/DeleteContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 9

    const/16 v8, 0xb

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lorg/telegram/ui/DeleteContactActivity$C12512;->this$0:Lorg/telegram/ui/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/DeleteContactActivity;->ignoreChange:Z
    invoke-static {v0}, Lorg/telegram/ui/DeleteContactActivity;->access$000(Lorg/telegram/ui/DeleteContactActivity;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/DeleteContactActivity$C12512;->this$0:Lorg/telegram/ui/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/DeleteContactActivity;->userSelectEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lorg/telegram/ui/DeleteContactActivity;->access$200(Lorg/telegram/ui/DeleteContactActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v4, p0, Lorg/telegram/ui/DeleteContactActivity$C12512;->this$0:Lorg/telegram/ui/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/DeleteContactActivity;->changeString:Ljava/lang/CharSequence;
    invoke-static {v4}, Lorg/telegram/ui/DeleteContactActivity;->access$300(Lorg/telegram/ui/DeleteContactActivity;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_7

    const-string/jumbo v0, ""

    :try_start_0
    iget-object v4, p0, Lorg/telegram/ui/DeleteContactActivity$C12512;->this$0:Lorg/telegram/ui/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/DeleteContactActivity;->changeString:Ljava/lang/CharSequence;
    invoke-static {v4}, Lorg/telegram/ui/DeleteContactActivity;->access$300(Lorg/telegram/ui/DeleteContactActivity;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/DeleteContactActivity$C12512;->this$0:Lorg/telegram/ui/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/DeleteContactActivity;->beforeChangeIndex:I
    invoke-static {v5}, Lorg/telegram/ui/DeleteContactActivity;->access$100(Lorg/telegram/ui/DeleteContactActivity;)I

    move-result v5

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/DeleteContactActivity$C12512;->this$0:Lorg/telegram/ui/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/DeleteContactActivity;->searching:Z
    invoke-static {v0}, Lorg/telegram/ui/DeleteContactActivity;->access$400(Lorg/telegram/ui/DeleteContactActivity;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/DeleteContactActivity$C12512;->this$0:Lorg/telegram/ui/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/DeleteContactActivity;->searchWas:Z
    invoke-static {v0}, Lorg/telegram/ui/DeleteContactActivity;->access$500(Lorg/telegram/ui/DeleteContactActivity;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v1, v2

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/DeleteContactActivity$C12512;->this$0:Lorg/telegram/ui/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/DeleteContactActivity;->userSelectEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lorg/telegram/ui/DeleteContactActivity;->access$200(Lorg/telegram/ui/DeleteContactActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    move v4, v3

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/DeleteContactActivity$C12512;->this$0:Lorg/telegram/ui/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/DeleteContactActivity;->allSpans:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/DeleteContactActivity;->access$600(Lorg/telegram/ui/DeleteContactActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DeleteContactActivity$C12512;->this$0:Lorg/telegram/ui/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/DeleteContactActivity;->allSpans:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/DeleteContactActivity;->access$600(Lorg/telegram/ui/DeleteContactActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/ChipSpan;

    invoke-interface {v5, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lorg/telegram/ui/DeleteContactActivity$C12512;->this$0:Lorg/telegram/ui/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/DeleteContactActivity;->allSpans:Ljava/util/ArrayList;
    invoke-static {v6}, Lorg/telegram/ui/DeleteContactActivity;->access$600(Lorg/telegram/ui/DeleteContactActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v6, p0, Lorg/telegram/ui/DeleteContactActivity$C12512;->this$0:Lorg/telegram/ui/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/DeleteContactActivity;->selectedContacts:Ljava/util/HashMap;
    invoke-static {v6}, Lorg/telegram/ui/DeleteContactActivity;->access$700(Lorg/telegram/ui/DeleteContactActivity;)Ljava/util/HashMap;

    move-result-object v6

    iget v0, v0, Lorg/telegram/ui/Components/ChipSpan;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/DeleteContactActivity$C12512;->this$0:Lorg/telegram/ui/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/DeleteContactActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;
    invoke-static {v0}, Lorg/telegram/ui/DeleteContactActivity;->access$800(Lorg/telegram/ui/DeleteContactActivity;)Lorg/telegram/ui/Components/LetterSectionsListView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LetterSectionsListView;->invalidateViews()V

    :goto_3
    if-eqz v1, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/DeleteContactActivity$C12512;->this$0:Lorg/telegram/ui/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/DeleteContactActivity;->userSelectEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lorg/telegram/ui/DeleteContactActivity;->access$200(Lorg/telegram/ui/DeleteContactActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "<"

    const-string/jumbo v4, ""

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/telegram/ui/DeleteContactActivity$C12512;->this$0:Lorg/telegram/ui/DeleteContactActivity;

    # setter for: Lorg/telegram/ui/DeleteContactActivity;->searching:Z
    invoke-static {v1, v2}, Lorg/telegram/ui/DeleteContactActivity;->access$402(Lorg/telegram/ui/DeleteContactActivity;Z)Z

    iget-object v1, p0, Lorg/telegram/ui/DeleteContactActivity$C12512;->this$0:Lorg/telegram/ui/DeleteContactActivity;

    # setter for: Lorg/telegram/ui/DeleteContactActivity;->searchWas:Z
    invoke-static {v1, v2}, Lorg/telegram/ui/DeleteContactActivity;->access$502(Lorg/telegram/ui/DeleteContactActivity;Z)Z

    iget-object v1, p0, Lorg/telegram/ui/DeleteContactActivity$C12512;->this$0:Lorg/telegram/ui/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/DeleteContactActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;
    invoke-static {v1}, Lorg/telegram/ui/DeleteContactActivity;->access$800(Lorg/telegram/ui/DeleteContactActivity;)Lorg/telegram/ui/Components/LetterSectionsListView;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/DeleteContactActivity$C12512;->this$0:Lorg/telegram/ui/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/DeleteContactActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;
    invoke-static {v1}, Lorg/telegram/ui/DeleteContactActivity;->access$800(Lorg/telegram/ui/DeleteContactActivity;)Lorg/telegram/ui/Components/LetterSectionsListView;

    move-result-object v1

    iget-object v4, p0, Lorg/telegram/ui/DeleteContactActivity$C12512;->this$0:Lorg/telegram/ui/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/DeleteContactActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter1;
    invoke-static {v4}, Lorg/telegram/ui/DeleteContactActivity;->access$900(Lorg/telegram/ui/DeleteContactActivity;)Lorg/telegram/ui/Adapters/SearchAdapter1;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/LetterSectionsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lorg/telegram/ui/DeleteContactActivity$C12512;->this$0:Lorg/telegram/ui/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/DeleteContactActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter1;
    invoke-static {v1}, Lorg/telegram/ui/DeleteContactActivity;->access$900(Lorg/telegram/ui/DeleteContactActivity;)Lorg/telegram/ui/Adapters/SearchAdapter1;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/SearchAdapter1;->notifyDataSetChanged()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v8, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/DeleteContactActivity$C12512;->this$0:Lorg/telegram/ui/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/DeleteContactActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;
    invoke-static {v1}, Lorg/telegram/ui/DeleteContactActivity;->access$800(Lorg/telegram/ui/DeleteContactActivity;)Lorg/telegram/ui/Components/LetterSectionsListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/LetterSectionsListView;->setFastScrollAlwaysVisible(Z)V

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/DeleteContactActivity$C12512;->this$0:Lorg/telegram/ui/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/DeleteContactActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;
    invoke-static {v1}, Lorg/telegram/ui/DeleteContactActivity;->access$800(Lorg/telegram/ui/DeleteContactActivity;)Lorg/telegram/ui/Components/LetterSectionsListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/LetterSectionsListView;->setFastScrollEnabled(Z)V

    iget-object v1, p0, Lorg/telegram/ui/DeleteContactActivity$C12512;->this$0:Lorg/telegram/ui/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/DeleteContactActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;
    invoke-static {v1}, Lorg/telegram/ui/DeleteContactActivity;->access$800(Lorg/telegram/ui/DeleteContactActivity;)Lorg/telegram/ui/Components/LetterSectionsListView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/LetterSectionsListView;->setVerticalScrollBarEnabled(Z)V

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/DeleteContactActivity$C12512;->this$0:Lorg/telegram/ui/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/DeleteContactActivity;->emptyTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lorg/telegram/ui/DeleteContactActivity;->access$1000(Lorg/telegram/ui/DeleteContactActivity;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/DeleteContactActivity$C12512;->this$0:Lorg/telegram/ui/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/DeleteContactActivity;->emptyTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lorg/telegram/ui/DeleteContactActivity;->access$1000(Lorg/telegram/ui/DeleteContactActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string/jumbo v2, "NoResult"

    const v3, 0x7f08035c

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/DeleteContactActivity$C12512;->this$0:Lorg/telegram/ui/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/DeleteContactActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter1;
    invoke-static {v1}, Lorg/telegram/ui/DeleteContactActivity;->access$900(Lorg/telegram/ui/DeleteContactActivity;)Lorg/telegram/ui/Adapters/SearchAdapter1;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Adapters/SearchAdapter1;->searchDialogs(Ljava/lang/String;)V

    :cond_5
    :goto_4
    return-void

    :cond_6
    move v1, v2

    goto/16 :goto_3

    :cond_7
    move v1, v2

    goto/16 :goto_3

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/DeleteContactActivity$C12512;->this$0:Lorg/telegram/ui/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/DeleteContactActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter1;
    invoke-static {v0}, Lorg/telegram/ui/DeleteContactActivity;->access$900(Lorg/telegram/ui/DeleteContactActivity;)Lorg/telegram/ui/Adapters/SearchAdapter1;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/SearchAdapter1;->searchDialogs(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/ui/DeleteContactActivity$C12512;->this$0:Lorg/telegram/ui/DeleteContactActivity;

    # setter for: Lorg/telegram/ui/DeleteContactActivity;->searching:Z
    invoke-static {v0, v3}, Lorg/telegram/ui/DeleteContactActivity;->access$402(Lorg/telegram/ui/DeleteContactActivity;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/DeleteContactActivity$C12512;->this$0:Lorg/telegram/ui/DeleteContactActivity;

    # setter for: Lorg/telegram/ui/DeleteContactActivity;->searchWas:Z
    invoke-static {v0, v3}, Lorg/telegram/ui/DeleteContactActivity;->access$502(Lorg/telegram/ui/DeleteContactActivity;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/DeleteContactActivity$C12512;->this$0:Lorg/telegram/ui/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/DeleteContactActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;
    invoke-static {v0}, Lorg/telegram/ui/DeleteContactActivity;->access$800(Lorg/telegram/ui/DeleteContactActivity;)Lorg/telegram/ui/Components/LetterSectionsListView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/DeleteContactActivity$C12512;->this$0:Lorg/telegram/ui/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/DeleteContactActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter1;
    invoke-static {v1}, Lorg/telegram/ui/DeleteContactActivity;->access$1100(Lorg/telegram/ui/DeleteContactActivity;)Lorg/telegram/ui/Adapters/ContactsAdapter1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LetterSectionsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lorg/telegram/ui/DeleteContactActivity$C12512;->this$0:Lorg/telegram/ui/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/DeleteContactActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter1;
    invoke-static {v0}, Lorg/telegram/ui/DeleteContactActivity;->access$1100(Lorg/telegram/ui/DeleteContactActivity;)Lorg/telegram/ui/Adapters/ContactsAdapter1;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/ContactsAdapter1;->notifyDataSetChanged()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v8, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/DeleteContactActivity$C12512;->this$0:Lorg/telegram/ui/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/DeleteContactActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;
    invoke-static {v0}, Lorg/telegram/ui/DeleteContactActivity;->access$800(Lorg/telegram/ui/DeleteContactActivity;)Lorg/telegram/ui/Components/LetterSectionsListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/LetterSectionsListView;->setFastScrollAlwaysVisible(Z)V

    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/DeleteContactActivity$C12512;->this$0:Lorg/telegram/ui/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/DeleteContactActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;
    invoke-static {v0}, Lorg/telegram/ui/DeleteContactActivity;->access$800(Lorg/telegram/ui/DeleteContactActivity;)Lorg/telegram/ui/Components/LetterSectionsListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/LetterSectionsListView;->setFastScrollEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/DeleteContactActivity$C12512;->this$0:Lorg/telegram/ui/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/DeleteContactActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;
    invoke-static {v0}, Lorg/telegram/ui/DeleteContactActivity;->access$800(Lorg/telegram/ui/DeleteContactActivity;)Lorg/telegram/ui/Components/LetterSectionsListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/LetterSectionsListView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/DeleteContactActivity$C12512;->this$0:Lorg/telegram/ui/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/DeleteContactActivity;->emptyTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/telegram/ui/DeleteContactActivity;->access$1000(Lorg/telegram/ui/DeleteContactActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "NoContacts"

    const v2, 0x7f08034a

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :catch_0
    move-exception v1

    goto/16 :goto_0

    :cond_a
    move v1, v3

    goto/16 :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/DeleteContactActivity$C12512;->this$0:Lorg/telegram/ui/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/DeleteContactActivity;->ignoreChange:Z
    invoke-static {v0}, Lorg/telegram/ui/DeleteContactActivity;->access$000(Lorg/telegram/ui/DeleteContactActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DeleteContactActivity$C12512;->this$0:Lorg/telegram/ui/DeleteContactActivity;

    iget-object v1, p0, Lorg/telegram/ui/DeleteContactActivity$C12512;->this$0:Lorg/telegram/ui/DeleteContactActivity;

    # getter for: Lorg/telegram/ui/DeleteContactActivity;->userSelectEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lorg/telegram/ui/DeleteContactActivity;->access$200(Lorg/telegram/ui/DeleteContactActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    # setter for: Lorg/telegram/ui/DeleteContactActivity;->beforeChangeIndex:I
    invoke-static {v0, v1}, Lorg/telegram/ui/DeleteContactActivity;->access$102(Lorg/telegram/ui/DeleteContactActivity;I)I

    iget-object v0, p0, Lorg/telegram/ui/DeleteContactActivity$C12512;->this$0:Lorg/telegram/ui/DeleteContactActivity;

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    # setter for: Lorg/telegram/ui/DeleteContactActivity;->changeString:Ljava/lang/CharSequence;
    invoke-static {v0, v1}, Lorg/telegram/ui/DeleteContactActivity;->access$302(Lorg/telegram/ui/DeleteContactActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
