.class Lorg/telegram/ui/PaymentFormActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "PaymentFormActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PaymentFormActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PaymentFormActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PaymentFormActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$1;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 3

    const/4 v2, 0x3

    const/4 v1, 0x1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$1;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->donePressed:Z
    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$300(Lorg/telegram/ui/PaymentFormActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$1;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/PaymentFormActivity;->finishFragment()V

    goto :goto_0

    :cond_2
    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$1;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->donePressed:Z
    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$300(Lorg/telegram/ui/PaymentFormActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$1;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->currentStep:I
    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$400(Lorg/telegram/ui/PaymentFormActivity;)I

    move-result v0

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$1;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/PaymentFormActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$1;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->currentStep:I
    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$400(Lorg/telegram/ui/PaymentFormActivity;)I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$1;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # invokes: Lorg/telegram/ui/PaymentFormActivity;->setDonePressed(Z)V
    invoke-static {v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->access$500(Lorg/telegram/ui/PaymentFormActivity;Z)V

    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$1;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # invokes: Lorg/telegram/ui/PaymentFormActivity;->sendForm()V
    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$600(Lorg/telegram/ui/PaymentFormActivity;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$1;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->currentStep:I
    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$400(Lorg/telegram/ui/PaymentFormActivity;)I

    move-result v0

    if-ne v0, v1, :cond_7

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$1;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;
    invoke-static {v1}, Lorg/telegram/ui/PaymentFormActivity;->access$700(Lorg/telegram/ui/PaymentFormActivity;)[Lorg/telegram/ui/Cells/RadioCell;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$1;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;
    invoke-static {v1}, Lorg/telegram/ui/PaymentFormActivity;->access$700(Lorg/telegram/ui/PaymentFormActivity;)[Lorg/telegram/ui/Cells/RadioCell;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/RadioCell;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$1;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity$1;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;
    invoke-static {v2}, Lorg/telegram/ui/PaymentFormActivity;->access$900(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;->shipping_options:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    # setter for: Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;
    invoke-static {v1, v0}, Lorg/telegram/ui/PaymentFormActivity;->access$802(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;)Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$1;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # invokes: Lorg/telegram/ui/PaymentFormActivity;->goToNextStep()V
    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$200(Lorg/telegram/ui/PaymentFormActivity;)V

    goto :goto_0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$1;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->currentStep:I
    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$400(Lorg/telegram/ui/PaymentFormActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$1;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # invokes: Lorg/telegram/ui/PaymentFormActivity;->sendCardData()Z
    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$1000(Lorg/telegram/ui/PaymentFormActivity;)Z

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$1;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->currentStep:I
    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$400(Lorg/telegram/ui/PaymentFormActivity;)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$1;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # invokes: Lorg/telegram/ui/PaymentFormActivity;->checkPassword()V
    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$1100(Lorg/telegram/ui/PaymentFormActivity;)V

    goto/16 :goto_0
.end method
