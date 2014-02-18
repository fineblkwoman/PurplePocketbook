//
//  DVLawTableViewController.m
//  The Purple PocketBook
//
//  Created by Alicia MacBook Pro on 1/13/14.
//  Copyright (c) 2014 Alicia MacBook Pro. All rights reserved.
//

#import "DVLawTableViewController.h"
#import "DVDetailLawViewController.h"
#import "SWRevealViewController.h"
#import "TheLaw.h"



@interface DVLawTableViewController ()

@end

@implementation DVLawTableViewController
{
    NSArray *theLaw;
}



- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    [[UINavigationBar appearance] setTintColor:[UIColor blackColor]];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    _sidebarButton.target = self.revealViewController;
    _sidebarButton.action = @selector(revealToggle:);
    //_sidebarButton.tintColor = [UIColor colorWithWhite:0.96f alpha:0.2f];
    
    
    
    TheLaw *dvLaw1 = [TheLaw new];
    dvLaw1.lawTitle = @"Restraining Orders";
    dvLaw1.lawDetail = @"Restraining order laws are state laws and each state has different laws (also called a statute) that lay out the requirements for getting an order.  \n \nA restraining order or protective order is a legal order issued by a state court which requires one person to stop harming another person.  It is also sometimes called a protection order, an injunction, an order of protection, or some other similar name.";
    
    TheLaw *dvLaw2 = [TheLaw new];
    dvLaw2.lawTitle = @"Restraining Orders - General information explaining what restraining orders are and how they can help you";
    dvLaw2.lawDetail = @"In general, domestic violence restraining order laws establish who can file for an order, what protection or relief a person can get from such an order, and how the order will be enforced.  While there are differences from state to state, all protective order statutes permit the court to order the abuser to stop hurting or threatening you (CEASE ABUSE provisions).  The majority of states' orders can also instruct the abuser to stay away from you, your home, your workplace or your school (STAY AWAY provisions).  You generally also can ask the court to order that all contact, whether by telephone, text messages, notes, mail, fax, email, through a third person, or delivery of flowers or gifts, is prohibited (NO CONTRACT provisions).  \n \nSome statutes also allow the court to order the abuser to pay you temporary child support or continue to make mortgage payments on a home owned by both of you (SUPPORT provisions), to award you sole use of a home or car owned by both of you (EXCLUSIVE USE provisions), or to pay you for medical costs or property damage caused by the abuser (RESTITUTION provisions).  \n \nSome courts might also be able to order the abuser to turn over any guns, rifles and ammunition s/he has (RELISQUISH FIREARMS provisions), attend a batterers' treatment program, appear for regular drug tests, or start alcohol or drug abuse counseling.  \n \nMany jurisdictions also allow the court to make decisions about the care and safety of your children as part of your restraining order.  Courts can order the abuser to stay away from and have no contact with your children's doctors, daycare, school or after-school job and many courts can make temporary custody/visitation decisions.  Some can even issue child support orders within the restraining order.  You can also ask the court to order supervised visitation, or to specify a safe arrangement for transferring the children back and forth between you and the abuser (CUSTODY, VISITATION AND CHILD SUPPORT provisions).  \n \nWhen the abuser does something that the court has ordered him/her not to do, or fails to do something the court has ordered him/her to do, s/he may have violated the order.  The victim can ask the police or the court, or both, depending on the violation, to enforce the order. The police can generally enforce the stay away, no contact, cease abuse, exclusive use, and possibly custody provisions - those that need immediate response.  If you are unable to call them when the violation occurs, they should take a report if you call them soon afterwards. In some cases, it might result in a misdemeanor or felony criminal conviction and punishment. These types of violations can also later be addressed by the civil court, and it is often a good idea to bring them to the court's attention.  \n \nOther violations are not easily enforced by the police, such as failure to pay support or attend treatment programs - those are better enforced by the court.  If you file a MOTION FOR CONTEMPT in the court that issued the order, explaining how the abuser violated the order, the court will hold a hearing to determine if the facts prove that the abuser violated the order.  If the court finds a violation did occur, the judge will determine a penalty.  Depending upon the laws of your jurisdiction and the nature of the violation, the penalty might be a finding of contempt, which could result in a fine, jail time or both.  The violation might also be a reason for the order to be extended or modified in some way.";
    
    TheLaw *dvLaw3 = [TheLaw new];
    dvLaw3.lawTitle = @"Custody";
    dvLaw3.lawDetail =  @"Custody laws are state laws and each state has different laws (also called a statute).  As with everything on this site, this information is not legal advice.  Custody is complicated and it is important to try to find a lawyer who has experience with custody and domestic violence laws to help you with your case.";
    
    TheLaw *dvLaw4 = [TheLaw new];
    dvLaw4.lawTitle = @"Do I need a lawyer?";
    dvLaw4.lawDetail =  @"Custody cases are complicated and it is important to try to find an experienced lawyer to help you with your case.  Please click on the Where to Find Help tab at the top of this page to find a lawyer or to find an advocate who can help you find a lawyer.  If you find a lawyer, be sure to ask about his/her experience with custody and domestic violence cases. ";
    
    TheLaw *dvLaw5 = [TheLaw new];
    dvLaw5.lawTitle = @"How will a judge make decisions about child custody?";
    dvLaw5.lawDetail =  @"Judges make decisions about child custody based on whatever they think is in the best interests of the child.  States have different rules and guidelines as to what factors the judge will consider when deciding what is in the best interests of the child. \n \nExamples of factors that a judge might look at when determining the “best interests of the child” are:  \n \nThe emotional, social, moral, and educational needs of the child;  \n \nThe home environments offered by each party;  \n \nThe interpersonal relationship between the child and each parent;  \n \nThe preference of the child, if the child is old enough and mature enough to give his/her preference;  \n \nThe mental stability of each parent (including any mental illness or drug use);  \n \nAny history of domestic violence; and  The safety of the child.";
    
    TheLaw *dvLaw6 = [TheLaw new];
    dvLaw6.lawTitle = @"Where can I file for child custody? (Which state has jurisdiction?";
    dvLaw6.lawDetail =  @"In most situations and in most states, you can file for custody in the HOME STATE of the child.  The HOME STATE is basically the state where the child has lived (with a parent or a person acting as a parent) for at least the last six consecutive months - however there are exceptions to this rule. (Note: Temporary absence from the state does not affect the six-month calculation.)  If your child is less than six months old, the HOME STATE is usually the state where the child has lived from birth.  \n \nIf you and your child recently moved to a new state, you may not be able to file for custody in that new state until you have lived there for at least six months.  Also, if there is a prior court order for custody, then you may have to file in that same court for future custody issues. We strongly suggest getting advice from an attorney about your particular situation.  \n \nIf there is more than one state involved - for example, if the child has moved across state lines, or if the other parent is in a different state - then it can be more complicated.  In these cases, both state and federal laws may govern which court can hear your custody case.  Therefore, as in all custody cases, it is very important that you find a lawyer to help you determine which court to go to.  \n \nIf you are trying to get temporary emergency custody in a new state you have moved to, it might depend on what state you are filing in.  All states except for MA follow the Uniform Child Custody Jurisdiction and Enforcement Act (UCCJEA).  Under the UCCJEA, you can file for temporary emergency custody in a state other than the home state if:  \n \nthe child is present in the state, and  \n \nthe child has been abandoned or needs emergency protection, because the child (or a sibling or parent of the child) is subjected to or threatened with mistreatment or abuse.  \n \nMA follows a slightly different law called the UCCJA.  Under the UCCJA, a person can file for temporary emergency jurisdiction only if the child was abandoned or needs emergency protection because the child (not the parent or sibling) is subjected to or threatened with mistreatment or abuse.  \n \nGetting emergency custody is difficult, so please talk to a lawyer before you file with the clerk of court. You may also want to talk to a domestic violence advocate about your options and for help in finding a lawyer.";
    
    TheLaw *dvLaw7 = [TheLaw new];
    dvLaw7.lawTitle = @"What are some pros and cons of starting a custody case?";
    dvLaw7.lawDetail =  @"There are many reasons people choose not to file for custody.  Some people decide not to get a custody order because they don’t want to get the courts involved.  Some parents make an informal agreement that works well for them.  Some parents think going to court will provoke the other parent, or they are worried that if a custody case is started, the other parent will suddenly fight for more custody or visitation rights than they had before.  In some situations, some mothers may not need to file for custody if the father's paternity has not been legally established.  \n \nHowever, getting a custody order from a court can give you certain legal rights. Getting a custody order can give you:  \n \nThe right to make decisions about your child and/or \n \nThe right to residency (to have your child live with you).  \n \nWithout a custody order, it is possible that you may not have these legal rights, even if you’re the parent that takes care of the child every day.  However, if you file for custody, the other parent may also request these rights and it will be up to the judge to decide.  \n \nWe strongly recommend talking to a lawyer who can help you think through if filing for custody would be best for you, depending on the facts of your situation. You can find legal help by clicking on the Finding a Lawyer page.  \n \nSome people think they should file for custody so they can get child support.  While custody and child support are related, you do not necessarily need a custody order to get child support.  A custody order will not automatically give you child support.";
    
    TheLaw *dvLaw8 = [TheLaw new];
    dvLaw8.lawTitle = @"Should I start a court case to ask for supervised visitation?";
    dvLaw8.lawDetail =  @"If you are not comfortable with the abuser being alone with your child, you might be thinking about asking the judge to order that visits with your child be supervised.  If you are already in court because the abuser filed for visitation or custody, you may not have much to lose by asking that the visits be supervised if you can present a valid reason for your request (although this may depend on your situation).  \n \nHowever, if there is no current court case, please get legal advice BEFORE you start a court case to ask for supervised visits.  We strongly recommend that you talk to an attorney who specializes in custody matters to find out what you would have to prove to get the visits supervised and how long supervised visits would last, based on the facts of your case.  \n \nIn the majority of cases, supervised visits are only a temporary measure.  Although the exact visitation order will vary by state, county, or judge, the judge might order a professional to observe the other parent on a certain amount of visits or the visits might be supervised by a relative for a certain amount of time -- and if there are no obvious problems, the visits may likely become unsupervised.  Oftentimes, at the end of a case, the other parent ends up with more frequent and/ or longer visits than s/he had before you went into court or even some form of custody.  \n \nIn some cases, to protect your child from immediate danger by the abuser, starting a case to ask for custody and supervised visits is appropriate.";
    
    TheLaw *dvLaw9 = [TheLaw new];
    dvLaw9.lawTitle = @"Parental Kidnapping";
    dvLaw9.lawDetail =  @"Custody and kidnapping are complicated and it is important to try to find an experienced lawyer to help you with your case. ";
    
    TheLaw *dvLaw10 = [TheLaw new];
    dvLaw10.lawTitle = @"Parental Kidnapping - I am afraid the other parent will take our children out of the state. What can I do?";
    dvLaw10.lawDetail =  @"If you are afraid that the other parent will take your children away without your consent, you might be able to ask the judge to issue an emergency custody order, which most states provide.  You may want to ask the judge to include in the order that the other parent cannot take the children out of the state, or that the other parent may only have supervised visitation.  \n \nDepending on your state's restraining order laws, a threat to take your child and leave the state might also possibly qualify you for a restraining order. ";
    
    
    TheLaw *dvLaw11 = [TheLaw new];
    dvLaw11.lawTitle = @"Parental Kidnapping - If the other parent takes my children out of state, can s/he be charged with kidnapping?";
    dvLaw11.lawDetail =  @"The answer to this question is very complicated and may depend on many different factors.  The laws on parental kidnapping (also known as custodial interference) are different in each state.  In some states, it may be against the law to take children out of state only if it violates a custody order or if there is an active custody case pending.  In other states, the act of taking the children out of state itself may not be illegal unless the parent conceals (hides) the children from the other parent.  Other factors that may be considered are whether the parents are married (and considered to have equal parental rights) or, in the case of unmarried parents, whether the father's paternity has been legally established.  Also, there could be a big difference if the other parent is planning a brief visit out of state, a long absence, or if s/he is planning on moving out of state for a long time.  We strongly suggest talking to a lawyer who specializes in custody matters and/or a prosecutor to find out if the other parent's actions are legal or not.";
    
    
    TheLaw *dvLaw12 = [TheLaw new];
    dvLaw12.lawTitle = @"Parental Kidnapping - How can I keep the other parent from taking my children out of the country?";
    dvLaw12.lawDetail =  @"If you are in the middle of a custody case in court, you may be able to ask the judge to seize (hold onto) the child's passport.  If there is no ongoing case, perhaps you may even be able to file for a restraining order if you qualify and ask the judge to hold the child's passport as part of that case.  \n \nIf the child does not have a passport but you fear the other parent may apply for one for the child, the State Department has a program called the Children's Passport Issuance Alert Program.  The program is explained as follows: \n \nThe Children’s Passport Issuance Alert Program (CPIAP) is one of the Department’s most important tools for preventing international parental child abduction.  The program allows parents to register their U.S. citizen children under the age of 18 in the Department’s Passport Lookout System.  If a passport application is submitted for a child who is registered in CPIAP, the Department contacts and alerts the parent or parents.  The passport lookout system gives all U.S. passport agencies as well as U.S. embassies and consulates abroad an alert on a child’s name if a parent or guardian registers an objection to passport issuance for his or her child.  This procedure provides parents advance warning of possible plans for international travel with the child.  \n \nTo enter your child into the program, you will have to complete the Entry Request Form, provide proof of your identity (a photocopy of your driver's license or other ID card), and submit a photocopy of your child's birth certificate or other documentation to show that you are the child's parent or legal guardian. ";
    
    
    TheLaw *dvLaw13 = [TheLaw new];
    dvLaw13.lawTitle = @"Divorce - What are the basic steps for filing for divorce?";
    dvLaw13.lawDetail =  @"While divorce laws vary by state, here are the basic steps that a person may have to follow in most states: \n \nFirst, you or your spouse must meet the residency requirements of the state you want to file in. \n \nSecond, you must have “grounds” (a legally acceptable reason) to end your marriage, which may include a no-fault ground such as irreconcilable differences.  \n \nThird, you must file the appropriate divorce papers and have copies sent to your spouse - for the exact rules for serving the papers, contact your local courthouse or an attorney.  \n \nFourth, if your spouse disagrees with anything in the divorce papers, then s/he will have the opportunity to file papers telling her/his side.  This may be called “contesting the divorce.”  If s/he contests it, then you may have a series of court appearances to sort the issues out.  If your spouse does not disagree with anything, then s/he may sign the appropriate divorce papers and send them back to you and/or the court (depending on your state).  If your spouse agrees with everything and signs the papers, this may be called an “uncontested divorce.”  Also, if a certain period of time passes and your spouse does not sign the papers or file any papers of his/her own, you may be able to proceed with the divorce as an uncontested divorce anyway. (Speak to a lawyer in your state about how long you have to wait to see if your spouse answers before you can continue with the divorce).  \n \nFifth, if there is property, assets, a pension, debts, or anything else that you need divided, or if you need financial support from your spouse, then these issues may have to be dealt with during the divorce or else you may lose your chance to deal with these issues.   The issues may be worked out during settlement negotiations and incorporated into the divorce decree or in a series of court hearings during the divorce.  Custody may also be decided as part of your divorce.";
    
    
    TheLaw *dvLaw14 = [TheLaw new];
    dvLaw14.lawTitle = @"What are some crimes that the abuser may have committed?";
    dvLaw14.lawDetail =  @"Some states have a specific crime of DOMESTIC VIOLENCE and others do not.  Note: Even if there is a crime of domestic violence, the definition of that crime may not be the same as the definition of domestic violence used for getting a restraining order.  Check the restraining order pages for your state under our Know the Laws page for more information on the definition of domestic violence for getting a restraining order.  \n \nWhether or not a state has a specific crime of domestic violence, it will have other crimes that the abuser may have committed.  Crimes in your state may include: \n \nAssault, \n \nThreats (or menacing), \n \nEndangerment, \n \nCriminal coercion, \n \nKidnapping, \n \nUnlawful imprisonment, \n \nSexual offenses (e.g., sexual assault, rape), \n \nTrespassing, \n \nHarassment, \n \nStalking.";
    
    
    TheLaw *dvLaw15 = [TheLaw new];
    dvLaw15.lawTitle = @"State Gun Laws";
    dvLaw15.lawDetail =  @"If you have a restraining order against the abuser or the abuser has a criminal conviction, state gun laws may make it illegal for the abuser to have a gun.  In addition to the state-specific gun laws, there are also federal gun laws that could apply.  To fully understand all of the legal protections available, it is important that you also read the Federal Gun Laws.";
    
    TheLaw *dvLaw16 = [TheLaw new];
    dvLaw16.lawTitle = @"Suing Your Abuser";
    dvLaw16.lawDetail =  @"You may have a right to seek justice from an abuser through the court system where you live. \n \nWhen people are injured by others, they are permitted to seek what the law refers to as DAMAGE in the form of money, for such things as medical bills, lost wages or employment, physical and emotional pain and suffering, and, in some cases, to punish the abuser.  Each state has its own laws on these subjects, but, for the most part, they are very similar when it comes to injuries from abuse.";
    
    TheLaw *dvLaw17 = [TheLaw new];
    dvLaw17.lawTitle = @"Suing Your Abuser - Small Claims Court";
    dvLaw17.lawDetail =  @"If your damages are below a certain amount, you may be able to file on your own in small claims court.  Small claims court is a less formal type of court, and many people are able to go to small claims court without the help of an attorney.  Ask the clerk of court for more information on small claims court in your area.  It is possible that the courthouse that you would need to file but please call the court to confirm that you can file a small claims case there.  However, it may be important to talk to an attorney to find out what the statute of limitations are for the type of case that you are bringing.  Basically, the statute of limitations set a time-frame for how long after an incident or crime a person can be sued.  Once the statute of limitations runs out, you can no longer sue the abuser.";
    
    TheLaw *dvLaw18 = [TheLaw new];
    dvLaw18.lawTitle = @"Suing Your Abuser - Finding a Lawyer";
    dvLaw18.lawDetail =  @"To sue someone for damages (not in small claims court), you will most likely need the help of a lawyer.  Some lawyers will take a case like this for a contingent fee.  That means the lawyer doesn't get paid for his/her time and labor unless you win in court, and then s/he takes some percent, usually a third, of whatever damages the judge orders.  (However, you may still have to pay court costs and other costs such as fees for mailing, copying, etc.)  Sometimes the judge will order the defendant to pay for your attorney's fees if you win the case at trial.";
    
    
    
    theLaw = [NSArray arrayWithObjects:dvLaw1, dvLaw2, dvLaw3, dvLaw4, dvLaw5, dvLaw6, dvLaw7, dvLaw8, dvLaw9, dvLaw10, dvLaw11, dvLaw12, dvLaw13, dvLaw14, dvLaw15, dvLaw16, dvLaw17, dvLaw18, nil];
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    // Return the number of rows in the section.
    return [theLaw count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    TheLaw *law = [theLaw objectAtIndex:indexPath.row];
    cell.textLabel.text = law.lawTitle;
    cell.textLabel.numberOfLines=0;
    cell.textLabel.font=[UIFont fontWithName:@"Georgia-Bold" size:14];

    // Configure the cell...
    
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"DVLawDetailSegue"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        DVDetailLawViewController *DVController = segue.destinationViewController;
        DVController.dvLaw = [theLaw objectAtIndex:indexPath.row];
    }
}



/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
