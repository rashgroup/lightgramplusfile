.class Lorg/telegram/ui/ChangeUsernameActivity$4;
.super Ljava/lang/Object;
.source "ChangeUsernameActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangeUsernameActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChangeUsernameActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChangeUsernameActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$4;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$4;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    # getter for: Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;
    invoke-static {v0}, Lorg/telegram/ui/ChangeUsernameActivity;->access$300(Lorg/telegram/ui/ChangeUsernameActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity$4;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    # getter for: Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;
    invoke-static {v1}, Lorg/telegram/ui/ChangeUsernameActivity;->access$300(Lorg/telegram/ui/ChangeUsernameActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "UsernameHelpLink"

    const v2, 0x7f08055a

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Lorg/telegram/ui/ChangeUsernameActivity$LinkSpan;

    iget-object v4, p0, Lorg/telegram/ui/ChangeUsernameActivity$4;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-direct {v1, v4, v0}, Lorg/telegram/ui/ChangeUsernameActivity$LinkSpan;-><init>(Lorg/telegram/ui/ChangeUsernameActivity;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    const/16 v4, 0x21

    invoke-virtual {v3, v1, v2, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$4;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    # getter for: Lorg/telegram/ui/ChangeUsernameActivity;->helpTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/telegram/ui/ChangeUsernameActivity;->access$600(Lorg/telegram/ui/ChangeUsernameActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/CharSequence;

    iget-object v2, p0, Lorg/telegram/ui/ChangeUsernameActivity$4;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    # getter for: Lorg/telegram/ui/ChangeUsernameActivity;->infoText:Ljava/lang/CharSequence;
    invoke-static {v2}, Lorg/telegram/ui/ChangeUsernameActivity;->access$500(Lorg/telegram/ui/ChangeUsernameActivity;)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v5

    const-string/jumbo v2, "\n\n"

    aput-object v2, v1, v6

    const/4 v2, 0x2

    aput-object v3, v1, v2

    invoke-static {v1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$4;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    # getter for: Lorg/telegram/ui/ChangeUsernameActivity;->helpTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/telegram/ui/ChangeUsernameActivity;->access$600(Lorg/telegram/ui/ChangeUsernameActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity$4;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    # getter for: Lorg/telegram/ui/ChangeUsernameActivity;->infoText:Ljava/lang/CharSequence;
    invoke-static {v1}, Lorg/telegram/ui/ChangeUsernameActivity;->access$500(Lorg/telegram/ui/ChangeUsernameActivity;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$4;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    # getter for: Lorg/telegram/ui/ChangeUsernameActivity;->ignoreCheck:Z
    invoke-static {v0}, Lorg/telegram/ui/ChangeUsernameActivity;->access$200(Lorg/telegram/ui/ChangeUsernameActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$4;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity$4;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    # getter for: Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;
    invoke-static {v1}, Lorg/telegram/ui/ChangeUsernameActivity;->access$300(Lorg/telegram/ui/ChangeUsernameActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    # invokes: Lorg/telegram/ui/ChangeUsernameActivity;->checkUserName(Ljava/lang/String;Z)Z
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ChangeUsernameActivity;->access$400(Lorg/telegram/ui/ChangeUsernameActivity;Ljava/lang/String;Z)Z

    goto :goto_0
.end method
