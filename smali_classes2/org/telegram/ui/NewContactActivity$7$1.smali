.class Lorg/telegram/ui/NewContactActivity$7$1;
.super Ljava/lang/Object;
.source "NewContactActivity.java"

# interfaces
.implements Lorg/telegram/ui/CountrySelectActivity$CountrySelectActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/NewContactActivity$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/NewContactActivity$7;


# direct methods
.method constructor <init>(Lorg/telegram/ui/NewContactActivity$7;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/NewContactActivity$7$1;->this$1:Lorg/telegram/ui/NewContactActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSelectCountry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/NewContactActivity$7$1;->this$1:Lorg/telegram/ui/NewContactActivity$7;

    iget-object v0, v0, Lorg/telegram/ui/NewContactActivity$7;->this$0:Lorg/telegram/ui/NewContactActivity;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/NewContactActivity;->selectCountry(Ljava/lang/String;)V

    new-instance v0, Lorg/telegram/ui/NewContactActivity$7$1$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/NewContactActivity$7$1$1;-><init>(Lorg/telegram/ui/NewContactActivity$7$1;)V

    const-wide/16 v2, 0x12c

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    iget-object v0, p0, Lorg/telegram/ui/NewContactActivity$7$1;->this$1:Lorg/telegram/ui/NewContactActivity$7;

    iget-object v0, v0, Lorg/telegram/ui/NewContactActivity$7;->this$0:Lorg/telegram/ui/NewContactActivity;

    # getter for: Lorg/telegram/ui/NewContactActivity;->phoneField:Lorg/telegram/ui/Components/HintEditText;
    invoke-static {v0}, Lorg/telegram/ui/NewContactActivity;->access$300(Lorg/telegram/ui/NewContactActivity;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/HintEditText;->requestFocus()Z

    iget-object v0, p0, Lorg/telegram/ui/NewContactActivity$7$1;->this$1:Lorg/telegram/ui/NewContactActivity$7;

    iget-object v0, v0, Lorg/telegram/ui/NewContactActivity$7;->this$0:Lorg/telegram/ui/NewContactActivity;

    # getter for: Lorg/telegram/ui/NewContactActivity;->phoneField:Lorg/telegram/ui/Components/HintEditText;
    invoke-static {v0}, Lorg/telegram/ui/NewContactActivity;->access$300(Lorg/telegram/ui/NewContactActivity;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/NewContactActivity$7$1;->this$1:Lorg/telegram/ui/NewContactActivity$7;

    iget-object v1, v1, Lorg/telegram/ui/NewContactActivity$7;->this$0:Lorg/telegram/ui/NewContactActivity;

    # getter for: Lorg/telegram/ui/NewContactActivity;->phoneField:Lorg/telegram/ui/Components/HintEditText;
    invoke-static {v1}, Lorg/telegram/ui/NewContactActivity;->access$300(Lorg/telegram/ui/NewContactActivity;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/HintEditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/HintEditText;->setSelection(I)V

    return-void
.end method
