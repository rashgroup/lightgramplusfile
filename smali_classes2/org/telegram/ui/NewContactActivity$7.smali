.class Lorg/telegram/ui/NewContactActivity$7;
.super Ljava/lang/Object;
.source "NewContactActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/NewContactActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/NewContactActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/NewContactActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/NewContactActivity$7;->this$0:Lorg/telegram/ui/NewContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance v0, Lorg/telegram/ui/CountrySelectActivity;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/telegram/ui/CountrySelectActivity;-><init>(Z)V

    new-instance v1, Lorg/telegram/ui/NewContactActivity$7$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/NewContactActivity$7$1;-><init>(Lorg/telegram/ui/NewContactActivity$7;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/CountrySelectActivity;->setCountrySelectActivityDelegate(Lorg/telegram/ui/CountrySelectActivity$CountrySelectActivityDelegate;)V

    iget-object v1, p0, Lorg/telegram/ui/NewContactActivity$7;->this$0:Lorg/telegram/ui/NewContactActivity;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/NewContactActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method
